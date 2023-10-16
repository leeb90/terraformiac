resource "aws_launch_configuration" "my_launch_config" {
  name_prefix   = "launch-config"
  image_id      = var.image_id
  instance_type = var.instance_type
  security_groups = [var.security_group_id]
  key_name      = var.key_name
}

# Define an Auto Scaling Group
resource "aws_autoscaling_group" "my_asg" {
  name                      = "my-auto-scaling-group"
  max_size                  = 4
  min_size                  = 2
  desired_capacity          = 2
  launch_configuration      = aws_launch_configuration.my_launch_config.name
  vpc_zone_identifier       = [var.subnet_id[0], var.subnet_id[1]]
  health_check_type         = "ELB"
  target_group_arns         = [var.target_group_arns]
  health_check_grace_period = 300 # Cooldown period in seconds
  default_cooldown          = 300 # Cooldown period in seconds
  termination_policies      = ["Default"]
}