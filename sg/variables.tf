# variables.tf
variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ssh_ingress_cidr" {
  description = "The CIDR block for SSH ingress"
  type        = string
  default     = "0.0.0.0/0"
}

variable "http_ingress_cidr" {
  description = "The CIDR block for HTTP ingress"
  type        = string
  default     = "0.0.0.0/0"
}

variable "https_ingress_cidr" {
  description = "The CIDR block for HTTPS ingress"
  type        = string
  default     = "0.0.0.0/0"
}

variable "MYSQL_ingress_cidr" {
  description = "The CIDR block for MySQL ingress"
  type        = string
  default     = "0.0.0.0/0"
}

variable "postgreSQL_ingress_cidr" {
  description = "The CIDR block for PostgreSQL ingress"
  type        = string
  default     = "0.0.0.0/0"
}
