provider "aws" {
  region = var.aws_region  
}

module "ec2" {
  source = "./modules/ec2"
  aws_region     = "us-east-1" # Replace with your desired AWS region
  instance_count = 1
  ami_id         = "ami-084568db4383264d4"
  instance_type  = "t2.medium"
  key_name       = "key_first"
  instance_tag  = "Project"
  security_groups = ["sg-0788747c9db0c4966"]
  volume_size    = 28
  filepath = "${path.module}/kops.sh" # Reads and encodes the kops.sh file in base64
}