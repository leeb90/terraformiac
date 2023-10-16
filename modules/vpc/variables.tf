variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for subnets."
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}