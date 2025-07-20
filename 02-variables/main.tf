variable "URL" {
  default = "example.com"
}

## Access variable
output "URL" {
  value = var.URL
}

# Variable is a combination of some other string. Then we have to use ${}
output "URL1" {
  value = "URL - ${var.URL}"
}

# Data types
variable "num1" {
  default = 10
}

variable "bool1" {
  default = true
}

variable "str1" {
  default = "Hello"
}

# Numbers, Booleans & Strings

# Variable types
variable "str2" {
  default = "World"
}

variable "list1" {
  default = [
    10,
    20,
    "xyz",
    false
  ]
}

# List can have combination of multiple data types also.

variable "map1" {
  default = {
    aws = {
      trainer = "John"
      duration = 30
    }
    devops = {
      trainer = "Steve"
      duration = 20
    }
  }
}

output "list1_1" {
  value = var.list1[2]
}

output "map1_aws_trainer" {
  value = var.map1["aws"]["trainer"]
  #value = var.map1["aws"].trainer
}

# Declare a empty variable and we can get the value from CLI, Unlike ansible or shell we must and should declare a variable in order to use it.
variable "trainer_name" {}
output "trainer_name" {
  value = var.trainer_name
}