terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Create VPC; CIDR 10.0.0.0/16
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  assign_generated_ipv6_cidr_block = true
  enable_dns_hostnames = true
  enable_dns_support = true
}
# Public Subnets 
# Private Subnets
# Public Route tables
#Private Route Tables
#IGW
#NGW 