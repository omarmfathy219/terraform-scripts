# create Internet Gateway and attach it to the VPC so that the VPC can access the Internet
resource "aws_internet_gateway" "myIGW" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "myIGW"
  }
}