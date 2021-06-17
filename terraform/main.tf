provider "aws" {
  region  = "us-west-2"
  version = "~> 2.18"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "Hey_netology"
  }
}

data "aws_instance" "foo"{}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners           = ["self"]
}
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}
data "aws_instances" "ec2" {}
