# Create EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-0a1235697f4afa8a4"
  instance_type = "t2.micro"

  security_groups = [aws_security_group.ssh.name]

  tags = {
    Name = "MyEC2WithSSH"
  }
}
  

# Create a security group that allows SSH
resource "aws_security_group" "ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # ⚠️ Open to all, restrict for production
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

