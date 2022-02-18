# Specify the provider and access details
provider "aws" {
  ##
}

# Create a VPC to launch our instances into
resource "aws_vpc" "default" {
 
}

# Create an internet gateway to give our subnet access to the outside world
resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id

  tags = {
      Name = "${var.prefix}-vdm-IG"
      CUSTOMER = var.prefix
    }
}

# Grant the VPC internet access on its main route table
resource "aws_route" "internet_access" {
  route_table_id         = aws_vpc.default.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.default.id
   tags = {
      Name = "${var.prefix}-vdm-IG"
      CUSTOMER = var.prefix
    }
}

# Create a subnet to launch our instances into
resource "aws_subnet" "default" {
  ##
  ##
  map_public_ip_on_launch = true
   tags = {
      Name = "${var.prefix}-vdm-IG"
      CUSTOMER = var.prefix
    }
}