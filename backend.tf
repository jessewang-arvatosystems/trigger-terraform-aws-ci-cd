terraform {
  backend "s3" {
    bucket  = "cdktf-bucket-name"
    encrypt = true
    region  = "us-east-1"
    key     = "terraform_backend/terraform.tfstate"
  }
}
