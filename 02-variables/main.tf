variable "URL" {
  default = "example.com"
}

##Access the variable
output "url" {
  value = "var.URL"

}