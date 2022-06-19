################################################################################
# Supporting Resources
################################################################################
locals {
  name = "example-ecs"
  tags = {
    Created = "Teeraform"
    Owner   = "DevOps"
    Module  = "terraform-module/ecs-instance-profile/aws"
  }
}

################################################################################
# Resources
################################################################################
module "ecs-instance-profile" {
  source  = "terraform-module/ecs-instance-profile/aws"
  version = "~> 1"

  name = format("%s-profile", var.name)
  tags = merge(local.tags, { Module = "terraform-module/ecs-instance-profile/aws" })
}

################################################################################
# OUTPUTS
################################################################################
output "ecs_profile" {
  value       = { for k, v in module.ecs-instance-profile : k => v }
  description = "Profile ARN, profile ID and role ID"
}
