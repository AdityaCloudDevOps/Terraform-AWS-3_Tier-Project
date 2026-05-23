resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "aditya-terraform-demo-2026"

  tags = {
    Name = "Terraform-S3"
  }
}