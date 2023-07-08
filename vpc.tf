# Create VPC
resource "aws_vpc" "vpc_group2" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "vpc_main"
  }
}
# Create Public Subnet for EC2
resource "aws_subnet" "group2_public1" {
  vpc_id                  = aws_vpc.vpc_group2.id
  cidr_block              = var.vpc_public1_cidr
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}a"
}

resource "aws_subnet" "group2_public2" {
  vpc_id                  = aws_vpc.vpc_group2.id
  cidr_block              = var.vpc_public2_cidr
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}b"
}

resource "aws_subnet" "group2_public3" {
  vpc_id                  = aws_vpc.vpc_group2.id
  cidr_block              = var.vpc_public3_cidr
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}c"
}
# Create Private subnet for RDS
resource "aws_subnet" "group2_private1" {
  vpc_id            = aws_vpc.vpc_group2.id
  cidr_block        = var.vpc_private1_cidr
  availability_zone = "${var.region}a"
}

resource "aws_subnet" "group2_private2" {
  vpc_id            = aws_vpc.vpc_group2.id
  cidr_block        = var.vpc_private2_cidr
  availability_zone = "${var.region}b"
}

resource "aws_subnet" "group2_private3" {
  vpc_id            = aws_vpc.vpc_group2.id
  cidr_block        = var.vpc_private3_cidr
  availability_zone = "${var.region}c"
}
# Create IGW for internet connection 
resource "aws_internet_gateway" "group2-gw" {
  vpc_id = aws_vpc.vpc_group2.id
}
# Creating Route table
resource "aws_route_table" "group2-r" {
  vpc_id = aws_vpc.vpc_group2.id

  route {
    //associated subnet can reach everywhere
    cidr_block = var.default_cidr
    //CRT uses this IGW to reach internet
    gateway_id = aws_internet_gateway.group2-gw.id
  }
}
# Associating route tabe to public subnet
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.group2_public1.id
  route_table_id = aws_route_table.group2-r.id
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.group2_public2.id
  route_table_id = aws_route_table.group2-r.id
}
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.group2_public3.id
  route_table_id = aws_route_table.group2-r.id
}
# Create RDS Subnet group
resource "aws_db_subnet_group" "rds_subnet_grp" {
  subnet_ids = ["${aws_subnet.group2_private1.id}", "${aws_subnet.group2_private2.id}", "${aws_subnet.group2_private3.id}"]
}
