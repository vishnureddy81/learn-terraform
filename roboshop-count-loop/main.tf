variable "instances" {
  default = [
    "fronted",
    "mongodb",
    "catalogue",
    "user",
    "robbitmq",
    "mysql",
    "shipping",
    "payment",
    "dispatch",
    "reids",
    "cart"
  ]
}


resource "aws_instance" "instance" {
  count = length(var.instances)
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0fabcecd5236d6dce"]
  tags = {
    name= var.instances[count.index]

  }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z05470293UTKVXA4543KK"
  name    = "${var.instances[count.index]}-dev.vishnuredddy1.online"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.instance[count.index].private_ip]

}
