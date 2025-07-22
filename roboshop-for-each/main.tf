variable "instances" {
  default = {
    fronted = {}
    mongodb = {}
    catalogue = {}
    user = {}
    robbitmq = {}
    mysql = {}
    shipping = {}
    payment = {}
    dispatch = {}
    reids = {}
    cart = {}
  }
}


resource "aws_instance" "instance" {
  for_each = var.instances
  ami      = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids= ["sg-0fabcecd5236d6dce"]
  tags = {
    name= each.key
  }
}

resource "aws_route53_record" "record" {
for_each = var.instances
  zone_id = "Z05470293UTKVXA4543KK"
  name    = "${each.key}-dev.vishnuredddy2.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[each.key]["private_ip"]]

    }
