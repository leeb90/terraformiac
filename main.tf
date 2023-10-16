module "network" {
  source = "./modules/vpc"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
}

module "alb" {
  source = "./modules/load-balancer"
  subnet_id = module.network.subnet_ids
  security_group_id = module.security.security_group_id
  alb_listener_port = "80"
  vpc_id = module.network.vpc_id
}

module "launch" {
  source = "./modules/auto-scaling"
  alb_id = module.alb.alb_id
  target_group_arns = module.alb.target_group_arn
  instance_type = "t2.micro"
  image_id = "ami-053b0d53c279acc90"
  security_group_id = module.security.security_group_id
  key_name = "test-server-delete-later"
  subnet_id = module.network.subnet_ids

}