resource "aws_s3_bucket" "s3_static_website_bucket" {
  bucket = var.s3_static_website_bucket_name
  tags = local.default_tags
}

resource "aws_s3_bucket_website_configuration" "s3_static_website_bucket_website_configuration" {
  bucket = aws_s3_bucket.s3_static_website_bucket.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}

resource "aws_s3_bucket_versioning" "s3_static_website_bucket_versioning" {
  bucket = aws_s3_bucket.s3_static_website_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_acl" "s3_static_website_bucket_acl" {
  bucket = aws_s3_bucket.s3_static_website_bucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_policy" "s3_static_website_bucket_policy" {
  bucket = aws_s3_bucket.s3_static_website_bucket.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Sid    = ""
        Principal = "*"
        Action: [
            "s3:GetObject"
        ]
        Resource: [
            "arn:aws:s3:::${var.s3_static_website_bucket_name}/*"
        ]
      },
    ]
  })
}
