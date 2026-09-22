provider "aws" {
  access_key = "---"
  secret_key = "--"
  region = "ap-south-1"
} 
# Security Group
resource "aws_security_group" "web_sg" {
  name        = "web-security-group"
  description = "Allow HTTP and HTTPS"

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Web-SG"
  }
}

# EC2 Instance
resource "aws_instance" "DemoInstance" {
  ami                    = "ami-01a00762f46d584a1"
  instance_type          = "t3.micro"
    key_name               = "app-testing" 
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "Server2" }
}