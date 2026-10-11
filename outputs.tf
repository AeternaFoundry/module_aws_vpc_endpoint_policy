output "vpc_endpoint_policies_id" {
  description = "Map of id values across all vpc_endpoint_policies, keyed the same as var.vpc_endpoint_policies"
  value       = { for k, v in aws_vpc_endpoint_policy.vpc_endpoint_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpc_endpoint_policies_policy" {
  description = "Map of policy values across all vpc_endpoint_policies, keyed the same as var.vpc_endpoint_policies"
  value       = { for k, v in aws_vpc_endpoint_policy.vpc_endpoint_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "vpc_endpoint_policies_region" {
  description = "Map of region values across all vpc_endpoint_policies, keyed the same as var.vpc_endpoint_policies"
  value       = { for k, v in aws_vpc_endpoint_policy.vpc_endpoint_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_endpoint_policies_vpc_endpoint_id" {
  description = "Map of vpc_endpoint_id values across all vpc_endpoint_policies, keyed the same as var.vpc_endpoint_policies"
  value       = { for k, v in aws_vpc_endpoint_policy.vpc_endpoint_policies : k => v.vpc_endpoint_id if v.vpc_endpoint_id != null && length(v.vpc_endpoint_id) > 0 }
}

