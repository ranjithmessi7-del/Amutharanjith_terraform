output "my_new"{
    value=azurerm_resource_group.Rg_name.name
}

output "location"{
    value=azurerm_resource_group.Rg_name.location
}

output "rg-id"{
    value=azurerm_resource_group.Rg_name.id
}

