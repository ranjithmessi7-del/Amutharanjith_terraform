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

resource "azurerm_resource_group" "example" {
  name     = "testResourceGroup1"
  location = "Central India"

  tags = {
    environment = "Production"
  }
}