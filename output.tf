output "records" {
    value = var.records
}

output "public_zone" {
    value = data.aws_route53_zone.public
}

output "public_ssl_cert_arn" {
    value = data.aws_acm_certificate.public.arn
}
