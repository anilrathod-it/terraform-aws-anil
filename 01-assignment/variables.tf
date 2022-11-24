
variable "assign1_tag_prefix" {
    type = string
    default = "anil_assign1"
}

variable "assign2_tag_prefix" {
    type = string
    default = "anil_assign2"
}

variable "vpc_cidr_block" {
    type = string
    default = "10.10.24.0/24" 
}

variable "subnet1_cidr_block" {
    type = string
    default = "10.10.24.0/25" 
}

variable "subnet2_cidr_block" {
    type = string
    default = "10.10.24.128/25" 
}

variable "us_east_1_ami_id" {
    type = string
    default = "ami-0b0dcb5067f052a63" 
}

variable "instance_type" {
    type = string
    default = "t2.nano" 
}

variable "vol_ebs_name" {
  type = list(string)
  default = [ "/dev/sdf", "/dev/sdg" ]
}