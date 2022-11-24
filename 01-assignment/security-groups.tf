resource "aws_security_group" "anil_assign1_sg" {
  name        = "anil_assign1_sg"
  description = "allow_ssh"
  vpc_id      = aws_vpc.anil_assign1_vpc.id
  ingress {
    description = "allow_ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.assign1_tag_prefix}_sg"
  }
}

resource "aws_security_group" "anil_assign2_sg" {
  name        = "anil_assign2_sg"
  description = "allow_ssh_http"
  vpc_id      = aws_vpc.anil_assign1_vpc.id
  ingress {
    description = "allow_ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "allow_http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.assign2_tag_prefix}_sg"
  }
}