output "vm_ip" {
  description = "The IP of VM created on aws"
  value       = aws_instance.vm.public_ip
}