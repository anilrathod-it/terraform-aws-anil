terraform {
  required_version = "1.3.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "anil-ec2-1" {
  ami             = "ami-0b0dcb5067f052a63"
  instance_type   = "t2.nano"
  security_groups = [aws_security_group.anil-ec2-1-sg.name]
  tags            = { Name = "anil-ec2-1" }
}

resource "aws_security_group" "anil-ec2-1-sg" {
  name        = "anilAllowHttp1"
  description = "allow http"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "http"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }

  tags = {
    Name = "anil-ec2-1-sg"
  }

}
