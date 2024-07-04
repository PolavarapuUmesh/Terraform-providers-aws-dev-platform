variable "region_name"{
  type = string 
  description = "AWS region to deploy resources"
  default = "us-east-1"
}

variable "public_subnet_1_cidr_block"{
  type = string 
  description = "Aws vpcs subnet cidr block for pub_1"
  default = "10.0.1.0/24"
}

variable "public_subnet_2_cidr__block"{
  type = string
  description = "Aws vpcs subnet cidr block for pub_2"
  default = "10.0.2.0/24"
}

variable "public_subnet_3_cidr_block"{
  type = string
  description = "Aws vpcs subnet cidr block for pub_3"
  default = "10.0.3.0/24"
}

variable "private_subnet_1_cidr_block"{
  type = string
  description = "Aws vpcs subnet cidr block for pri_1"
  default = "10.0.4.0/24"
}

variable "private_subnet_2_cidr_block"{
  type = string
  description = "Aws vpcs subnet cidr block for priv_2"
  default = "10.0.5.0/24"
}

