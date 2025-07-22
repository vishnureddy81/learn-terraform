module "roboshop" {
  for_each = var.instance
  source = "./module "
  component_name = "each.key"

}

variable "instance" {
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
