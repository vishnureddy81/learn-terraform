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