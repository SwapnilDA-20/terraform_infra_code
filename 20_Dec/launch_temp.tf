resource "aws_launch_template" "asg-ltmp" {
  name_prefix   = "asg-temp"
  image_id      = "ami-0014ce3e52359afbd"
  instance_type = "t3.micro"
}
