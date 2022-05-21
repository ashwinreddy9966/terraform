resource "aws_route53_record" "component" {
  zone_id = "Z0986768G0Z9NX43SZ0Z"
  name    = "${var.COMPONENT}-dev.robotlearning.internal"
  type    = "NS"
  ttl     = "60"
  records = [aws_spot_instance_request.cheap_worker.private_ip]

}