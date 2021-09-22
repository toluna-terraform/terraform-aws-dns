resource "aws_route53_record" "records" {
  for_each = var.records
  zone_id  = data.aws_route53_zone.public.zone_id
  name     = "${each.key}.${data.aws_route53_zone.public.name}"
  type     = "CNAME"
  ttl      = 300
  records  = [each.value]
}
