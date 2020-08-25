provider "aws" {
  region     = "ap-northeast-1"
}

data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

module "eks_fargate" {
  source = "../modules/eks_fargate"

  eks_name        = var.eks_name
  cluster_version = "1.17"
  account         = var.account

  stage                     = var.stage
  subnet_ids                = [aws_subnet.a.id, aws_subnet.c.id, aws_subnet.d.id]
}