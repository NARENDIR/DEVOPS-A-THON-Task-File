resource "aws_security_group" "web_sg" {
  name_prefix = "web-sg-"
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["49.37.195.115"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["49.37.195.115"]
  }
}
