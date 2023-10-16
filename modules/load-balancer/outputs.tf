output "alb_id" {
  description = "ALB ID"
  value = aws_lb.my_alb.id
}

output "target_group_arn" {
  description = "Target Group ARn"
  value = aws_lb_target_group.my_target_group.arn
}