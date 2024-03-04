provider "aws" {
  region = "your_aws_region"
}

resource "aws_instance" "my-flask-api" {
  ami           = "ami-xxxxxxxxxxxxxxxxx"  # Specify a suitable AMI ID for your region and instance type
  instance_type = "t2.micro"  # Adjust the instance type based on your requirements

  tags = {
    Name = "my-flask-api-instance"
  }
}

resource "aws_security_group" "my-flask-api-sg" {
  name        = "my-flask-api-sg"
  description = "Security group for my Flask API"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
