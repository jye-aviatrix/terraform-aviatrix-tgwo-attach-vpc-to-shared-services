resource "aviatrix_aws_tgw_security_domain" "security_domain" {
  name     = var.security_domain_name
  tgw_name = var.tgw_name
}


resource "aviatrix_aws_tgw_peering_domain_conn" "security_domain_connection" {
  for_each     = toset(var.shared_service_security_domain_names)
  tgw_name1    = var.tgw_name
  domain_name1 = aviatrix_aws_tgw_security_domain.security_domain.name
  tgw_name2    = var.tgw_name
  domain_name2 = each.value
}

resource "aviatrix_aws_tgw_vpc_attachment" "aws_tgw_vpc_attachment" {
    tgw_name = var.tgw_name
    region = var.region
    security_domain_name = aviatrix_aws_tgw_security_domain.security_domain.name
    vpc_account_name = var.vpc_account_name
    vpc_id = var.vpc_id
    disable_local_route_propagation = false
}