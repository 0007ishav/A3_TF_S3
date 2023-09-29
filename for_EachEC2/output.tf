output "instance_id" {
  value = aws_instance.myEC2Instance.id
  description = "The ID of the launched instance"
}

output "ip" {
  description = "The private IP address of the launched EC2 instance."
  value       = aws_instance.myEC2Instance.private_ip
}