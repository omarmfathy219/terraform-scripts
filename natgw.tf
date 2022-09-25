# Create Nat Gateways for the private subnets and associate them with the elastic IP addresses
resource "aws_nat_gateway" "natgw-1" {
  allocation_id = aws_eip.myeip.id
  subnet_id     = aws_subnet.public-subnet-1.id
}