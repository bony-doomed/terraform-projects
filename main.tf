# Configure the AWS provider
terraform {
  backend = S3 {
    bucket = tfm-cicd-utpalendu
    key    = state/cicd.tfstate
    region = ap-sotheast-2
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c6120f461d6b39e9"
  instance_type = "t2.micro"
  
}
