terraform {
  backend "s3" {
    bucket         = "terraform-migration-backend1729"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
