data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                = var.keyvault_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
  tags                = local.tags

  access_policy {
    tenant_id          = data.azurerm_client_config.current.tenant_id
    object_id          = data.azurerm_client_config.current.object_id
    secret_permissions = ["Get", "List", "Set", "Delete", "Purge", "Recover"]
  }
}

resource "azurerm_key_vault_secret" "vm_password" {
  name         = "vm-password"
  value        = random_password.vm.result
  key_vault_id = azurerm_key_vault.kv.id
  tags         = local.tags
}
