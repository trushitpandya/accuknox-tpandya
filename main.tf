provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

module "vpc_us_east_1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"
  providers = {
    aws = aws.us-east-1
  }

  name = "vpc-us-east-1"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
}

module "vpc_us_east_2" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"
  providers = {
    aws = aws.us-east-2
  }

  name = "vpc-us-east-2"
  cidr = "10.1.0.0/16"

  azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  public_subnets  = ["10.1.101.0/24", "10.1.102.0/24", "10.1.103.0/24"]

  enable_nat_gateway = true
}

module "ec2_instance_us_east_1" {
  source = "./ec2_instance"
  providers = {
    aws = aws.us-east-1
  }

  region        = "us-east-1"
  instance_type = var.instance_type
  vpc_id        = module.vpc_us_east_1.vpc_id
  subnet_id     = module.vpc_us_east_1.public_subnets[0]
}

module "ec2_instance_us_east_2" {
  source = "./ec2_instance"
  providers = {
    aws = aws.us-east-2
  }

  region        = "us-east-2"
  instance_type = var.instance_type
  vpc_id        = module.vpc_us_east_2.vpc_id
  subnet_id     = module.vpc_us_east_2.public_subnets[0]
}
