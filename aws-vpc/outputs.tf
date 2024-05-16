output "subnet_id" {
  description = "ID from subnet"
  value       = aws_subnet.subnet.id

}

output "security_group_id" {
  description = "The id from security group"
  value       = aws_security_group.security_group.id
}