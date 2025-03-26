resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a" # Modify as per your region's AZs
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }
}

# Step 3: Create a private subnet
resource "aws_subnet" "private_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-south-1a"  # First AZ
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-a"
  }
}

# Create a subnet in AZ ap-south-1b (Second AZ)
resource "aws_subnet" "private_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "ap-south-1b"  # Second AZ
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-b"
  }
}

# Step 4: Create an internet gateway (for public subnet access)
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "my-igw"
  }
}

# Step 6: Create a DB Subnet Group (for private subnets)
resource "aws_db_subnet_group" "db_subnet_group" {
  name        = "my-db-subnet-group"
  subnet_ids  = [
    aws_subnet.private_a.id,
    aws_subnet.private_b.id  # Add the second subnet
  ]
  tags = {
    Name = "my-db-subnet-group"
  }
}