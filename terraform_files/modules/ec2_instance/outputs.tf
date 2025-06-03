output "know_your_ip" {
  value = aws_instance.KOPS[0].public_ip
  description = "value of the public IP address of the EC2 instance"
}
