resource "aws_instance" "anil_assign1_ec2_1" {
  ami                    = data.aws_ami.anil_assign3_ami_data.image_id
  instance_type          = var.instance_type
  iam_instance_profile   = aws_iam_instance_profile.anil_assign1_instance_profile.name
  vpc_security_group_ids = [aws_security_group.anil_assign1_sg.id]
  subnet_id              = aws_subnet.anil_assign1_subnet1.id
  tags                   = { Name = "${var.assign1_tag_prefix}_ec2_${count.index+1}" }
  count = 1
}

resource "aws_instance" "anil_assign2_ec2_1" {
  ami                    = data.aws_ami.anil_assign3_ami_data.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.anil_assign2_sg.id]
  subnet_id              = aws_subnet.anil_assign1_subnet2.id
  tags = { Name = "${var.assign2_tag_prefix}_ec2_1" }
}