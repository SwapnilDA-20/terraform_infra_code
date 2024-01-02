resource "aws_instance" "ec2-web" {
ami           = "ami-0c7217cdde317cfec" # us-west-2
instance_type = "t3.medium"
key_name = "terraform"
associate_public_ip_address = true	
subnet_id      = "subnet-0f0aa54b651c8d47c"
iam_instance_profile = aws_iam_instance_profile.this.name
vpc_security_group_ids = [aws_security_group.public-sg.id]
user_data = "${file("nginx.sh")}"

 
tags = {
Name = "Web-App"
  }
 }
