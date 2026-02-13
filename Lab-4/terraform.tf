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
  subscription_id = "741a2986-1e85-4bdc-8495-09ddd6c44c09"
  features {}
}
