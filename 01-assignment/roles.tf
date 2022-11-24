
resource "aws_iam_role_policy" "anil_assign1_role_policy" {
  name = "${var.assign1_tag_prefix}_role_policy"
  role = aws_iam_role.anil_assign1_role.id


  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetObject",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_role" "anil_assign1_role" {
  name = "${var.assign1_tag_prefix}_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_instance_profile" "anil_assign1_instance_profile" {
  name = "${var.assign1_tag_prefix}_instance_profile"
  role = aws_iam_role.anil_assign1_role.name
}