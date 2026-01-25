# Create ONE complete main.tf file
@'
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "rgnew" {
  name     = "rgmyname"
  location = "southeastasia"
}

# Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = "mystorageaccount001"
  resource_group_name      = azurerm_resource_group.rgnew.name
  location                 = azurerm_resource_group.rgnew.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
'@ | Out-File -FilePath "main.tf" -Encoding UTF8

# Delete other .tf files to avoid confusion
Remove-Item complete.tf -Force -ErrorAction SilentlyContinue
Remove-Item variables.tf -Force -ErrorAction SilentlyContinue