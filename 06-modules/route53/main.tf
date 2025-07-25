resource "aws_route53_record" "record" {
  zone_id = "Z05470293UTKVXA4543KK"
  name    = "${var.instance_name}-dev.vishnuredddy.online"
  type    = "A"
  ttl     = "30"
  records = [var.ip_address]
}

variable "instance_name" {}
variable "ip_address" {}
