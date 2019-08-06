provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  shared_credentials_file = "/Users/satgaur/.aws/credentials"
}
resource "aws_s3_bucket" "s3bucket" {
  bucket = "terraform-getting-started-guide"
  acl = "private"
}
