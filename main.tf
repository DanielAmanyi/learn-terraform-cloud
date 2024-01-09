provider "aws" {
  region = var.region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ubuntu" {
  for_each = 
    instance_type = toset(var.instance_type)
  
  ami           = data.aws_ami.ubuntu.id
  

  tags = {
    Name = var.instance_name
    Team = "Dev"
  }

  
}
