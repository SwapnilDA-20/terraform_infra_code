resource "aws_cloudfront_distribution" "staticwebiste-hadiya" {
  // origin is where CloudFront gets its content from.
  origin {
    custom_origin_config {
      // These are all the defaults.
      http_port              = "80"
      https_port             = "443"
      origin_protocol_policy = "http-only"
      origin_ssl_protocols   = ["TLSv1", "TLSv1.1", "TLSv1.2"]
    }

    // Here we're using our S3 bucket's URL!
    domain_name = "mystaticwebsiteswapnil2023.s3-website-us-east-1.amazonaws.com"
    // This can be any name to identify this origin.
    origin_id   = "www.swapnilahirekar.in"
  }

  enabled             = true
  default_root_object = "index.html"

  // All values are defaults from the AWS console.
  default_cache_behavior {
    viewer_protocol_policy = "redirect-to-https"
    compress               = true
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    // This needs to match the `origin_id` above.
    target_origin_id       = "www.swapnilahirekar.in"
    min_ttl                = 0
    default_ttl            = 86400
    max_ttl                = 31536000

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  // Here we're ensuring we can hit this distribution using www.test.swapnilahirekar.in
  // rather than the domain name CloudFront gives us.
  aliases = ["test.swapnilahirekar.in"]

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  // Here's where our certificate is loaded in!
  viewer_certificate {
    acm_certificate_arn = "arn:aws:acm:us-east-1:703734704101:certificate/9f240faa-127e-413b-abc2-0804bfcfe6c9"
    ssl_support_method  = "sni-only"
  }
}
