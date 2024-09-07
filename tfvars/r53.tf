resource "aws_route53_record" "r53" {
    for_each = aws_instance.expense
    zone_id = "give your zone id"
    name = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = startswith(each.key, "frontend") ? [each.value.public_ip] : [each.value.private_ip]
}