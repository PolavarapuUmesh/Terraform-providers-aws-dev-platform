provider "aws" {
  region = var.region
}

variable "region" {
  description = "aws region where you are ready to deploy at"
  type        = string
  default     = "us-east-1"
}

