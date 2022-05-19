variable "COMPONENTS" {
  default = [
    "frontend",
    "mongo"
  ]
}
variable "ALL_COMPONENTS" {
  default = {
      mongodb   = "null",
      catalogue = "1.1.2"
  }
}
