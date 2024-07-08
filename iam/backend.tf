terraform {
  backend "s3"{
    bucket = "terraform-preprod-proj"
    region = "us-east-1"
    key = "dev/iam/terraform.tfstate"
  }
}
