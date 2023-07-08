#Route53
resource "aws_route53_record" "site_domain" {
  zone_id         = "Z05959082Y55K5QTTMT24"  //can be variable 
  name            = var.domain_name
  ttl             = 600
  type            = "A"

  records = [
    aws_instance.wordpress_server.public_ip
    
  ]
}