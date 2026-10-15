resource "azurerm_container_group" "aci" {
  name                = var.container_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  ip_address_type     = "Public"
  dns_name_label      = var.container_dns_label
  tags                = local.tags

  image_registry_credential {
    server   = azurerm_container_registry.acr.login_server
    username = azurerm_container_registry.acr.admin_username
    password = azurerm_container_registry.acr.admin_password
  }

  container {
    name   = "web"
    image  = "${azurerm_container_registry.acr.login_server}/cr460-web:${var.image_tag}"
    cpu    = "0.5"
    memory = "1.0"

    ports {
      port = 80
    }
  }
}