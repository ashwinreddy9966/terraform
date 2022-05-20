#module "frontend" {
#  count       = length(var.COMPONENTS)
#  source      = "./ec2"
#  COMPONENT   = var.COMPONENTS[count.index]
#  APP_VERSION = var.APP_VERSION[count.index]
#}

output "sample" {
  value = [for o in var.ALL_COMPONENTS : o.COMPONENT]
}