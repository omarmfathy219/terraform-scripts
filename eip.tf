# Create elastic IP addresses for the NAT gateways
resource "aws_eip" "myeip" {
  vpc = true
}