locals {
  # Tag de gestion des couts applique a TOUTES les ressources
  tags = {
    Projet = var.project_tag
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.tags
}
