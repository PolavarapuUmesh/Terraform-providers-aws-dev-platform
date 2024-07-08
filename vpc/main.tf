#vpc
resource "aws_vpc" "dev_vpc"{
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev_vpc"
  }
}

#vcp_public_subnets
resource "aws_subnet" "public_subnet_1"{
  availability_zone = "us-east-1a"
  cidr_block =  var.public_subnet_1_cidr_block
  vpc_id = aws_vpc.dev_vpc.id
}

resource "aws_subnet" "public_subnet_2"{
  availability_zone = "us-east-1b"
  cidr_block =  var.public_subnet_2_cidr__block
  vpc_id = aws_vpc.dev_vpc.id
}

resource "aws_subnet" "public_subnet_3"{
  availability_zone = "us-east-1c"
  cidr_block =  var.public_subnet_3_cidr_block
  vpc_id = aws_vpc.dev_vpc.id
}


#private_subnet
resource "aws_subnet" "private_subnet_1"{
  availability_zone = "us-east-1d"
  cidr_block =  var.private_subnet_1_cidr_block
  vpc_id = aws_vpc.dev_vpc.id
}

resource "aws_subnet" "private_subnet_2"{
  availability_zone = "us-east-1e"
  cidr_block =  var.private_subnet_2_cidr_block
  vpc_id = aws_vpc.dev_vpc.id
}


#route_table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.dev_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "public_route_table"
  }
}


#routetable_associastion
resource "aws_route_table_association" "public_subnet_1_association" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_subnet_2_association" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_subnet_3_association" {
  subnet_id      = aws_subnet.public_subnet_3.id
  route_table_id = aws_route_table.public.id
}

#igw(internet gateway)
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Name = "dev_igw"
  }
}
