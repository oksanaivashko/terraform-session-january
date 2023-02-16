#   --- Crete my VPC ---
resource "aws_vpc" "task_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.inst_tenancy
  tags = local.common_tags
}