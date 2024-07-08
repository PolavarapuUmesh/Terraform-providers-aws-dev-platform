terraform {
  backend "s3"{
    bucket = "terraform-eks-backend-proj"
    region = "us-east-1"
    key = "dev/eks/terraform.tfstate"
  }
}
