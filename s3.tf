provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  

  bucket = "nagu-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

}