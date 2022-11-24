resource "aws_vpc" "anil_assign1_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.assign1_tag_prefix}_vpc"
  }
}

resource "aws_subnet" "anil_assign1_subnet1" {
  vpc_id     = aws_vpc.anil_assign1_vpc.id
  cidr_block = var.subnet1_cidr_block
  tags = {
    Name = "${var.assign1_tag_prefix}_subnet1"
  }
}

resource "aws_subnet" "anil_assign1_subnet2" {
  vpc_id     = aws_vpc.anil_assign1_vpc.id
  cidr_block = var.subnet2_cidr_block
  tags = {
    Name = "${var.assign1_tag_prefix}_subnet2"
  }
}