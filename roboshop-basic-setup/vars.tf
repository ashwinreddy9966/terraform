variable "COMPONENTS" {
  default = [
    "mongodb",
    "catalogue",
  ]
}

variable "APP_VERSION" {
  default = [
    "null",
    "1.0.0"
  ]
}

variable "ALL_COMPONENTS" {
  default = {
      mongodb = {
        app_version = "null"
      },
      catalogue = {
        app_version = "1.1.2"
      },
      redis = {
        app_version = "null"
      },
      user = {
        app_version = "1.0.1"
      },
      cart = {
        app_version = "1.0.5"
      },
      mysql = {
        app_version = "null"
      },
      shipping = {
        app_version = "1.0.2"
      },
      rabbitmq = {
        app_version = "null"
      },
      payment = {
        app_version = "1.0.5"
      },
      frontend = {
        app_version = "1.0.9"
      }
    }
  }
