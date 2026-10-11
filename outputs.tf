output "wafv2_web_acl_rule_group_associations_managed_rule_group" {
  description = "Map of managed_rule_group values across all wafv2_web_acl_rule_group_associations, keyed the same as var.wafv2_web_acl_rule_group_associations"
  value       = { for k, v in aws_wafv2_web_acl_rule_group_association.wafv2_web_acl_rule_group_associations : k => v.managed_rule_group if v.managed_rule_group != null && length(v.managed_rule_group) > 0 }
}
output "wafv2_web_acl_rule_group_associations_override_action" {
  description = "Map of override_action values across all wafv2_web_acl_rule_group_associations, keyed the same as var.wafv2_web_acl_rule_group_associations"
  value       = { for k, v in aws_wafv2_web_acl_rule_group_association.wafv2_web_acl_rule_group_associations : k => v.override_action if v.override_action != null && length(v.override_action) > 0 }
}
output "wafv2_web_acl_rule_group_associations_priority" {
  description = "Map of priority values across all wafv2_web_acl_rule_group_associations, keyed the same as var.wafv2_web_acl_rule_group_associations"
  value       = { for k, v in aws_wafv2_web_acl_rule_group_association.wafv2_web_acl_rule_group_associations : k => v.priority if v.priority != null }
}
output "wafv2_web_acl_rule_group_associations_region" {
  description = "Map of region values across all wafv2_web_acl_rule_group_associations, keyed the same as var.wafv2_web_acl_rule_group_associations"
  value       = { for k, v in aws_wafv2_web_acl_rule_group_association.wafv2_web_acl_rule_group_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "wafv2_web_acl_rule_group_associations_rule_group_reference" {
  description = "Map of rule_group_reference values across all wafv2_web_acl_rule_group_associations, keyed the same as var.wafv2_web_acl_rule_group_associations"
  value       = { for k, v in aws_wafv2_web_acl_rule_group_association.wafv2_web_acl_rule_group_associations : k => v.rule_group_reference if v.rule_group_reference != null && length(v.rule_group_reference) > 0 }
}
output "wafv2_web_acl_rule_group_associations_rule_name" {
  description = "Map of rule_name values across all wafv2_web_acl_rule_group_associations, keyed the same as var.wafv2_web_acl_rule_group_associations"
  value       = { for k, v in aws_wafv2_web_acl_rule_group_association.wafv2_web_acl_rule_group_associations : k => v.rule_name if v.rule_name != null && length(v.rule_name) > 0 }
}
output "wafv2_web_acl_rule_group_associations_visibility_config" {
  description = "Map of visibility_config values across all wafv2_web_acl_rule_group_associations, keyed the same as var.wafv2_web_acl_rule_group_associations"
  value       = { for k, v in aws_wafv2_web_acl_rule_group_association.wafv2_web_acl_rule_group_associations : k => v.visibility_config if v.visibility_config != null && length(v.visibility_config) > 0 }
}
output "wafv2_web_acl_rule_group_associations_web_acl_arn" {
  description = "Map of web_acl_arn values across all wafv2_web_acl_rule_group_associations, keyed the same as var.wafv2_web_acl_rule_group_associations"
  value       = { for k, v in aws_wafv2_web_acl_rule_group_association.wafv2_web_acl_rule_group_associations : k => v.web_acl_arn if v.web_acl_arn != null && length(v.web_acl_arn) > 0 }
}

