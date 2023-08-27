resource "aws_instance" "web_instance" {
  ami           = "ami-06f621d90fa29f6d0"  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = "myec2key"   

  tags = {
    Name = "WebInstance"
  }
}
