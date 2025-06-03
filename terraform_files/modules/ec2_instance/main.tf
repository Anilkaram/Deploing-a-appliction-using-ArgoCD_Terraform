provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "KOPS" {
    ami           = var.ami_id # Example AMI, replace with your desired AMI
    instance_type = var.instance_type # Example instance type, adjust as needed
    key_name      = var.key_name # Replace with your key pair name
    count = var.instance_count # Number of instances to create
    tags = {
        Name = var.instance_tag
    }
    vpc_security_group_ids = var.security_groups
    root_block_device {
        volume_size = var.volume_size # Size in GB, adjust as needed
        volume_type = "gp3" # General Purpose SSD
    }
    iam_instance_profile = data.aws_iam_instance_profile.kops_profile.name # IAM instance profile for permissions
    user_data = file(var.filepath) # Path to your user data script
}   
data "aws_iam_instance_profile" "kops_profile" {
    name = "kops-ec2-role" # Replace with your IAM instance profile name
}

