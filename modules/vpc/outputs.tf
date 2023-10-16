output "subnet_ids" {
  description = "List of AWS subnet IDs"
  value = aws_subnet.my_subnets[*].id
}

output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.my_vpc.id
}