resource "aws_subnet" "main" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_cidr
  availability_zone       = "us-east-1a"

  // Additional subnet configurations...
}