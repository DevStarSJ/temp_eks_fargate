# resource "aws_default_vpc" "default" {
# }

data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = ["develop-vpc"]
  }
}