resource "azurerm_subnet_network_security_group_association" "sna" {
    for_each = var.snam
    
    subnet_id = data.azurerm_subnet.snd[each.key].id
    network_security_group_id = data.azurerm_network_security_group.nsgd[each.key].id
}

data "azurerm_network_security_group" "nsgd" {
    for_each = var.snam

    name = each.value.nsg_name
    resource_group_name = each.value.resource_group_name 
}

data "azurerm_subnet" "snd" {

    for_each = var.snam
    name = each.value.subnet_name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
  
}