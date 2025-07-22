resource "aws_instance" "instance" {
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0fabcecd5236d6dce"]
  tags = {
    name= var.component_name
  }
}

resource "aws_route53_record" "record" {
  zone_id = "Z05470293UTKVXA4543KK"
  name    = "${var.component_name}-dev.vishnuredddy2.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]

}

variable "component_name" {

}