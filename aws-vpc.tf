/* Setup our aws provider */
provider "aws" {
  version = "~> v2.7.0"

  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

/* Define our vpc */
resource "aws_vpc" "default" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "CG-VPC"
  }
}

