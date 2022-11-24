# terraform {
#   required_version = "1.3.5"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "4.40.0"
#     }
#   }
# }

# variable "ec2ImageId" {
#     type = string 
#     default = "ami-0b0dcb5067f052a63"
# }

# output "createdEc2InstanceDetails" {
#   value = aws_instance.anil_ec2
# }
# provider "aws" {
#    alias = "TF_training"
#    region = "us-east-1"
#    profile = "default"
# }

# resource "aws_instance" "anil_ec2" {
#   ami           = var.ec2ImageId
#   instance_type = "t2.nano"
#   tags = {
#     Name = "Anil_EC2"
#     Environmet: "Test"
#   }
# }
