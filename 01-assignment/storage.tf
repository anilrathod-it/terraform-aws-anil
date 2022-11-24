

resource "aws_ebs_volume" "anil_assign2_ec2_1_ebs" {
  availability_zone = aws_instance.anil_assign2_ec2_1.availability_zone
  size              = 2
  type              = "standard"
  tags              = { Name = "${var.assign2_tag_prefix}_ec2_1_ebs${count.index + 1}" }
  count             = length(var.vol_ebs_name)
}

resource "aws_volume_attachment" "anil_assign2_ec2_1_ebs_attach" {
  device_name = var.vol_ebs_name[count.index]
  volume_id   = aws_ebs_volume.anil_assign2_ec2_1_ebs[count.index].id
  instance_id = aws_instance.anil_assign2_ec2_1.id
  count       = length(var.vol_ebs_name)
}
