variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
}
variable "instance_count" {
  description = "The number of EC2 instances to create"
  type        = number
}
variable "instance_type" {
  description = "The type of EC2 instance to create"
}
variable "key_name" {
  description = "The name of the key pair to use for SSH access to the instance"
}
variable "instance_tag" {
  description = "The name to assign to the EC2 instance"

}
variable "volume_size" {
  description = "The size of the root volume in GB"
}
variable "security_groups" {
  description = "The security groups to associate with the EC2 instance"
}
variable "filepath" {
  description = "file path location"
}
