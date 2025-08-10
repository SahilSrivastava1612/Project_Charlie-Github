resource "azurerm_resource_group" "rg1" {

    for_each = var.resource_groups
    
    name = each.key
    location = each.value
}