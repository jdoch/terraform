terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-01aab85a5e4a5a0fe"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}