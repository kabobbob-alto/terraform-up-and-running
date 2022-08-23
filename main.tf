provider "aws" {
  region = "us-east-1"
}

resource "aws_subnet" "bmcclellan-vpc" {
  vpc_id     = "vpc-0fa3229913b7a34c5"
  cidr_block = "10.0.0.0/24"
}

resource "aws_instance" "example" {
  ami           = "ami-0343fe6cfc8a09c18"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.bmcclellan-vpc.id

  tags = {
    Name = "terraform-example"
  }
}
