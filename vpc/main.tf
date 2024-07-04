#vpc
resource "aws_vpc" "default"{
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev_vpc"
  }
}

#vcp_subnets
resource "aws_subnet" "public_subnet_1"{
  availability_zone = "us-east-1a"
  cidr_block =  var.public_subnet_1_cidr_block
  vpc_id = aws_vpc.default.id
}

resource "aws_subnet" "public_subnet_2"{
  availability_zone = "us-east-1b"
  cidr_block =  var.public_subnet_2_cidr__block
  vpc_id = aws_vpc.default.id
}

resource "aws_subnet" "public_subnet_3"{
  availability_zone = "us-east-1c"
  cidr_block =  var.public_subnet_3_cidr_block
  vpc_id = aws_vpc.default.id
}

resource "aws_subnet" "private_subnet_1"{
  availability_zone = "us-east-1d"
  cidr_block =  var.private_subnet_1_cidr_block
  vpc_id = aws_vpc.default.id
}

resource "aws_subnet" "private_subnet_2"{
  availability_zone = "us-east-1e"
  cidr_block =  var.private_subnet_2_cidr_block
  vpc_id = aws_vpc.default.id
}

#route_table

