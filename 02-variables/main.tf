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
va