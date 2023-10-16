variable "subnet_id" {
  description = "List of AWS subnet IDs"
  type        = list(string)
}

variable "image_id" {
  description = "Instance Image ID"
  type        = string
}

variable "alb_id" {
  description = "Application Load Balancer ID"
  type        = string
}

variable "target_group_arns" {
  description = "Target Group arn"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID"
  type        = string
}

variable "key_name" {
  description = "Key Name"
  type        = string
}