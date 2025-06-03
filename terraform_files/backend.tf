terraform {
    backend "s3" {
      bucket = "terraform.statestore.anil"
      key = "terraform.tfstate"
      region = "us-east-1"
    }
}
