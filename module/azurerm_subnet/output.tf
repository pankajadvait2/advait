output "subnet_id" {
    value = {
        for key, sub in azurerm_subnet.sub :
        key => sub.id
    }
}