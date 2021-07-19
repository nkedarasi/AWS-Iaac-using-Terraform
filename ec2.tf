provider "aws" {
  region     = "us-east-1"
  access_key = "XXXXXX"
  secret_key = "XXXXXXXXXXXXXX"
}

resource "aws_instance" "new" {
  ami               = "ami-0fa60543f60171fe3"
  instance_type     = "t2.micro"
  subnet_id         = "subnet-07c0c648276ef26ff"
  security_groups   = ["sg-0c8318debb55d08e8"]
  key_name = aws_key_pair.key.id

  tags = {
    Name = "Terraform-ec2"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "terraform-key-ec2"
  public_key = "ssh-rsa"
}
