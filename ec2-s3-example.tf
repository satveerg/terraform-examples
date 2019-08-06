provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  shared_credentials_file = "/Users/satgaur/.aws/credentials"
}
resource "aws_s3_bucket" "s3bucket" {
  bucket = "terraform-getting-started-guide"
  acl = "private"
}
resource "aws_instance" "example" {
  ami = "ami-2757f631"
  instance_type = "t2.micro"
  depends_on = ["aws_s3_bucket.s3bucket"]
}
resource "aws_instance" "another" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}
