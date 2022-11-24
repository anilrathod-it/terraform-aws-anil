module "anil-custome-module-s3-static-website" {
  source = "./modules/s3_static_website"
  s3_static_website_bucket_name = var.anil_s3_static_website_bucket_name
  s3_static_website_bucket_tags = var.anil_s3_static_website_bucket_tags
}