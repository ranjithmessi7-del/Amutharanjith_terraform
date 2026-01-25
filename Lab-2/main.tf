terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  # ▼ ADD THIS LINE ▼ Replace with your target subscription ID
  subscription_id = "a071a23d-f935-4079-a467-daaf6d2b21e1"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location

  tags = {
    environment = "Production"
  }
}