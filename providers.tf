terraform {
  required_version = ">= 1.5.0"

  # Backend Terraform Cloud (workspace de type CLI-driven)
  cloud {
    organization = "cr460-samuel"

    workspaces {
      name = "cr460-devoir1"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# Les identifiants Azure viennent des variables d'environnement ARM_* definies
# dans le workspace Terraform Cloud : rien de secret dans le code.
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}
