provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-02987ad632b714ab9"
  instance_type = "t2.micro"
}
