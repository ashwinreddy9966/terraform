variable "COMPONENTS" {
  default = [
    "mongo",
    "catalogue"
  ]
}
variable "ALL_COMPONENTS" {
  default = {
      mongodb   = "null",
      catalogue = "1.1.2"
  }
}
