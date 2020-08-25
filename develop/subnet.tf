data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

resource "aws_subnet" "a" {
  vpc_id     = data.aws_vpc.main.id
  cidr_block = var.subnet_1_cidr
  availability_zone = "ap-northeast-1a"

	tags = map(
			"Name", "${var.stage}-a",
			"kubernetes.io/cluster/${var.eks_name}", "shared",
		)
}

resource "aws_subnet" "c" {
  vpc_id     = data.aws_vpc.main.id
  cidr_block = var.subnet_2_cidr
  availability_zone = "ap-northeast-1c"

	tags = map(
			"Name", "${var.stage}-c",
			"kubernetes.io/cluster/${var.eks_name}", "shared",
		)
}

resource "aws_subnet" "d" {
  vpc_id     = data.aws_vpc.main.id
  cidr_block = var.subnet_3_cidr
  availability_zone = "ap-northeast-1d"

	tags = map(
			"Name", "${var.stage}-d",
			"kubernetes.io/cluster/${var.eks_name}", "shared",
		)
}
