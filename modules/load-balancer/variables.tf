variable "subnet_id" {
  description = "List of AWS subnet IDs"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
}

variable "alb_listener_port" {
  description = "List of AWS subnet IDs"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
}