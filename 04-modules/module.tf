module "anil_modules_ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0b0dcb5067f052a63"
  instance_type          = "t2.nano"

  tags = {
    Name   = "anil_modules_ec2_instance"
  }
}