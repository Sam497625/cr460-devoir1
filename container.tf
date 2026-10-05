resource "azurerm_container_group" "aci" {
  name                = var.container_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  ip_address_type     = "Public"
  dns_name_label      = var.container_dns_label
  tags                = local.tags

  container {
    name   = "web"
    image  = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.0"

    ports {
      port = 80
    }
  }
}