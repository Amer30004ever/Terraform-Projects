#------------------- Define Subnets ---------------------#

#---------------- first private subnet ------------#

resource "aws_subnet" "priv_subnet1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.priv_subnet1_cidr
  availability_zone = "$(var.region)a"
  tags = {
    Name = "priv_subnet-1"
  }
}

#---------------- second private subnet ------------#

resource "aws_subnet" "priv_subnet2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.priv_subnet2_cidr
  availability_zone = "$(var.region)b"
  tags = {
    Name = "priv_subnet-2"
  }
}

#---------------- first public subnet ------------#

resource "aws_subnet" "pub_subnet1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.pub_subnet1_cidr
  availability_zone = "$(var.region)a"
  tags = {
    Name = "pub_subnet-1"
  }
}

#---------------- second public subnet ------------#

resource "aws_subnet" "pub_subnet2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = var.pub_subnet2_cidr
  availability_zone = "$(var.region)b"
  tags = {
    Name = "pub_subnet-2"
  }
}