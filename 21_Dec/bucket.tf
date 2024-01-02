resource "aws_s3_bucket" "my-static-website" {
  bucket = "mystaticwebsiteswapnil2023" # give a unique bucket name
  tags = {
    Name = "my-static-website"
  }
}
