#vpc variable
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

#subnet variable
variable "public_subnet_1_cidr" {
  description = "The CIDR block for the first public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "The CIDR block for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_subnet_3_cidr" {
  description = "The CIDR block for the third public subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "availability_zone_1" {
  description = "The availability zone for the first public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "The availability zone for the second public subnet"
  type        = string
  default     = "us-east-1b"
}

variable "availability_zone_3" {
  description = "The availability zone for the third public subnet"
  type        = string
  default     = "us-east-1c"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-id"
}

variable "instance_type" {
  description = "The type of instance to be used"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "The key name to use for the EC2 instance"
  type        = string
  default     = "server"
}

