# VPC
resource "aws_vpc" "jenkins_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "terraform_vpc"
  }
}

# Subnets
resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.jenkins_vpc.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = var.availability_zone_1
  tags = {
    Name = "public_subnet_1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.jenkins_vpc.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = var.availability_zone_2
  tags = {
    Name = "public_subnet_2"
  }
}

resource "aws_subnet" "public_subnet_3" {
  vpc_id            = aws_vpc.jenkins_vpc.id
  cidr_block        = var.public_subnet_3_cidr
  availability_zone = var.availability_zone_3
  tags = {
    Name = "public_subnet_3"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.jenkins_vpc.id
  tags = {
    Name = "vpc_igw"
  }
}

# Security Group
resource "aws_default_security_group" "jenkins_sg" {
  vpc_id = aws_vpc.jenkins_vpc.id

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Launch an EC2 Instance
resource "aws_instance" "jenkins_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "jenkins_server"
  }
}

