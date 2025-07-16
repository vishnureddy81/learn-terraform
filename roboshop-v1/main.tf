resource "aws_instance" "fronted" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "frontend-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.fronted.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "mongodb-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "catalogue-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "redis-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "user-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "cart-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "mysql-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "shipping-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "rabbitmq-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "payment-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = Z02665523CCE7X5KKVOH8
  name    = "dispatch-dev.vishnureddy.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}
