# create public and private subnets in the VPC
# create public subnet-1
resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public-subnet_1-cidr
  map_public_ip_on_launch = true # give the subnet a public IP address when an instance is launched in it
}
# create public subnet-1
resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public-subnet_2-cidr
  map_public_ip_on_launch = true
}
# create private subnet-1
resource "aws_subnet" "private-subnet-1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private-subnet_1-cidr
}
# create private subnet-2
resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private-subnet_2-cidr
}
