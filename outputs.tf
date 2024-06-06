output "vpc_us_east_1_id" {
  value = module.vpc_us_east_1.vpc_id
}

output "vpc_us_east_2_id" {
  value = module.vpc_us_east_2.vpc_id
}

output "ec2_instance_us_east_1_id" {
  value = module.ec2_instance_us_east_1.instance_id
}

output "ec2_instance_us_east_2_id" {
  value = module.ec2_instance_us_east_2.instance_id
}
