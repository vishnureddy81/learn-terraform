resource "aws_instance" "fronted" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="frontend"
  }
}

resource "aws_instance" "mongodb" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="catalogue"
  }
}
resource "aws_instance" "redis" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="redis"
  }
}
resource "aws_instance" "user" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="user"
  }
}
resource "aws_instance" "cart" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="cart"
  }
}

resource "aws_instance" "mysql" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="mysql"
  }
}
resource "aws_instance" "shipping" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="shipping"
  }
}
resource "aws_instance" "rabbitmq" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="rabbitmq"
  }
}
resource "aws_instance" "payment" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="payment"
  }
}
resource "aws_instance" "dispatch" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0fabcecd5236d6dce"]
  tags = {
    name ="dispatch"
  }
}