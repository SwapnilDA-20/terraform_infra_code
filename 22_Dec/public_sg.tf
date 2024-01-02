resource "aws_security_group" "public-sg" {
name = "public-sg"
vpc_id = "vpc-0c3cd8d9541683fe2"
ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 80
    to_port = 80
    protocol = "tcp"
  }


  egress {
   from_port = 0
   to_port = 0
   protocol = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
tags = {
    Name = "web-app"
  }
}
