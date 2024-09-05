# Output the public IP of the instance
output "public_ip" {
  value = aws_instance.jenkins.public_ip
}
