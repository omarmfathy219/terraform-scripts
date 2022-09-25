# Create Route Tables for the public subnets
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.myvpc.id
}
# create a route in the public route table to send all traffic to the Internet Gateway
resource "aws_route" "public-route" {
  route_table_id         = aws_route_table.public-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.myIGW.id
}
# associate the public subnets-1 with the public route table 
resource "aws_route_table_association" "public-route-table-association-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public-route-table.id
}
# associate the public subnets-2 with the public route table 
resource "aws_route_table_association" "public-route-table-association-2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public-route-table.id
}
# create a route table for the private subnets
resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.myvpc.id
}
# create a route in the private route table to send all traffic to the NAT Gateway
resource "aws_route" "private-route" {
  route_table_id         = aws_route_table.private-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.natgw-1.id
}
# associate the private subnets-1 with the private route table
resource "aws_route_table_association" "private-route-table-association-1" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private-route-table.id
}
# associate the private subnets-2 with the private route table
resource "aws_route_table_association" "private-route-table-association-2" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private-route-table.id
}