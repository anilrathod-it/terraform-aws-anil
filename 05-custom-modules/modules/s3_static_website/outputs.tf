output "s3_static_website_bucket_website_endpoint" {
  value = aws_s3_bucket.s3_static_website_bucket.website_endpoint
}