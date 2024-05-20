output "subnet_id" {
  description = "the ID of subnet"
  value       = azurerm_subnet.subnet.id
}

output "security_group_id" {
  description = "the id of network security group"
  value       = azurerm_network_security_group.nsg.id
}