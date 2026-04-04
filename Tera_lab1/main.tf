terraform{
    required_providers {

        azurerm={
            source  = "hashicorp/azurerm"
            version ="~>3.0.2"
            }
    }
       required_version = ">= 1.14.0"
    }
    provider "azurerm"{
        features{}
    }

resource "azurerm_resource_group" "Rg_new" {
  name     = "Amutharanjith_RG"
  location = "central india"
}