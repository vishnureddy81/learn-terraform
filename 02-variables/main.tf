variable "URL" {
  default = "example.com"
}

##Access the variable
output "url" {
  value = "var.URL"
}

#variable is combination of some other string. Then we have use ${}
output "URL1" {
  value = "URL -${var.URL}"
}

#Data types
variable "num1" {
  default = 10
}
 variable "boll1" {
   default = "true"
 }
variable "str1" {
  default = "Hello"
}

#Numbers,Booleans & strings
#variable types
variable "str2" {
  default = "world"
}
variable "list" {
  default = [
    10,
    20,
    "xyz",
    false
  ]
}

#list can have combination of multiple data type also.
variable "map1" {
  default = {
    aws   = {
      trainer = "john"
      duration = 30
    }
    devops = {
      trainer = "steve"
      duration = 20
    }
  }
}
output "list_1" {
  value = "var.list1[2]"
}

output "map1_aws_trainer" {
  value = "var.map1"["aws"]["trainer"]
}

#declare a empty variable and we can get the value from CLI unlike shell and ansible we must and should declare a variable in order to use it.
variable "trainer_name" {
}
