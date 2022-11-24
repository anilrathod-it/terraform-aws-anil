variable "s3_static_website_bucket_name" {
    type = string  
}

variable "s3_static_website_bucket_tags" {
    type = map
    default = {}
}