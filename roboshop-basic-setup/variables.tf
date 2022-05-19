variable "COMPONENTS" {
  default = [
    "frontend",
    "mongo"
  ]
}
variable "APP_VERSION" {
  default = {
      mongodb   = "null",
      catalogue = "1.1.2"
  }
}
