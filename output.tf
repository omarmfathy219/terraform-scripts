# print vpc_id to the console after terraform apply is done
output "vpc_id" {
  value = aws_vpc.myvpc.id
}
