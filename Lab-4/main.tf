resource "azurerm_resource_group" "rgnew" {
  name     = var.rg_name
  location = var.location

  tags = {
    environment = "Production"
  }
}