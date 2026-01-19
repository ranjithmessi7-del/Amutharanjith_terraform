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

resource "azurerm_resource_group" "rgnew" {
  name     = var.rg_name
  location = var.location 

  tags = {
    environment = "rg_name"
  }
}