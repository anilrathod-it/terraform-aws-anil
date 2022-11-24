resource "aws_instance" "anil_tf_remote_state" {
  ami                    = "ami-0b0dcb5067f052a63"
  instance_type          = "t2.nano"
  subnet_id              = "subnet-0aa0a9583d043cac5"
  tags                   = { Name = "anil_tf_remote_state_ec2_1" }
}