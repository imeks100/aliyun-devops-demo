output "vpc_id" {
  description = "The VPC id"
  value       = module.vpc.vpc_id
}

output "vpc_name" {
  description = "The VPC name"
  value       = module.vpc.vpc_name
}

output "vpc_cidr_block" {
  description = "The VPC cidr block"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_tags" {
  description = "The VPC tags"
  value       = module.vpc.vpc_tags
}

output "vswitch_ids" {
  description = "List of vswitch ids"
  value       = module.vpc.vswitch_ids
}

output "vswitch_names" {
  description = "List of vswitch names"
  value       = module.vpc.vswitch_names
}

output "vswitch_cidr_blocks" {
  description = "The vswitch cidr block"
  value       = module.vpc.vswitch_cidr_blocks
}

output "vswitch_tags" {
  description = "List of vswitch tags."
  value       = module.vpc.vswitch_tags
}
