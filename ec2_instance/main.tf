terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

resource "aws_instance" "this" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (change if needed)
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "example-instance"
  }
}
