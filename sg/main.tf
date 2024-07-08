# main.tf
provider "aws" {
  region = var.region
}

# VPC resource
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "main"
  }
}

# Security Group resource
resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_ingress_cidr]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.http_ingress_cidr]
  }

  ingress{
    description = "Allow HTTPS"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [var.https_ingress_cidr]
  }
  
  ingress{
    description = "Allow MYSQL"
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = [var.MYSQL_ingress_cidr]
  }

  ingress{
    description = "Allow postgreSQL"
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = [var.postgreSQL_ingress_cidr]
  }


  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web_sg"
  }
}

