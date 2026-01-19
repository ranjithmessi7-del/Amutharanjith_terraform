terraform {
  required_providers {
    azurerm = {                      # ✅ CORRECT: Equal sign
      source  = "hashicorp/azurerm"  # ✅ CORRECT: Equal sign
      version = "~> 3.0.2"           # ✅ CORRECT: Equal sign with space
    }
  }
  required_version = ">= 1.1.0"      # ✅ CORRECT: ">=" operator
}

provider "azurerm" {
  features {}
  
}

resource "azurerm_storage_account" "storage" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.storage.name
  location                 = azurerm_resource_group.storage.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
    }
}