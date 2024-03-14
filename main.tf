locals {
  tags = {
    Project     = var.project
    CreatedBy   = var.createdBy
    CreatedOn   = timestamp()
    Environment = terraform.workspace
  }
}

module "ec2" {
  source            = "./modules/module-aws-ec2"
  ami               = var.ami
  availability_zone = var.availability_zone
  tags              = local.tags
}