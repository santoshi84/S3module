module "s3_bucket" {
  source = "./modules/s3"

  bucket = "${var.environment}-${var.bucket}"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}