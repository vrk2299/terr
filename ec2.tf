terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0f1dcc636b69a6438" #baseal2 ##ami
  instance_type = "t2.micro"

  tags = {
    Name = "test-instance"
  }
}
