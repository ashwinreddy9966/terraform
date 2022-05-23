resource "aws_route53_record" "component" {
  zone_id = "Z0109537GJF7WTDM81TZ"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "NS"
  ttl     = "60"
  records = [aws_spot_instance_request.cheap_worker.private_ip]

}