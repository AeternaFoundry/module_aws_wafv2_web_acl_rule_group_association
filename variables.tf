variable "wafv2_web_acl_rule_group_associations" {
  description = <<EOT
Map of wafv2_web_acl_rule_group_associations, attributes below
Required:
    - priority
    - rule_name
    - web_acl_arn
Optional:
    - override_action
    - region
    - managed_rule_group (block):
        - managed_rule_group_configs (optional, block):
            - aws_managed_rules_acfp_rule_set (optional, block):
                - creation_path (required)
                - enable_regex_in_path (optional)
                - registration_page_path (required)
                - request_inspection (optional, block):
                    - address_fields (optional, block):
                        - identifiers (required)
                    - email_field (optional, block):
                        - identifier (required)
                    - password_field (optional, block):
                        - identifier (required)
                    - payload_type (required)
                    - phone_number_fields (optional, block):
                        - identifiers (required)
                    - username_field (optional, block):
                        - identifier (required)
                - response_inspection (optional, block):
                    - body_contains (optional, block):
                        - failure_strings (required)
                        - success_strings (required)
                    - header (optional, block):
                        - failure_values (required)
                        - name (required)
                        - success_values (required)
                    - json (optional, block):
                        - failure_values (required)
                        - identifier (required)
                        - success_values (required)
                    - status_code (optional, block):
                        - failure_codes (required)
                        - success_codes (required)
            - aws_managed_rules_anti_ddos_rule_set (optional, block):
                - client_side_action_config (optional, block):
                    - challenge (optional, block):
                        - exempt_uri_regular_expression (optional, block):
                            - regex_string (optional)
                        - sensitivity (optional)
                        - usage_of_action (required)
                - sensitivity_to_block (optional)
            - aws_managed_rules_atp_rule_set (optional, block):
                - enable_regex_in_path (optional)
                - login_path (required)
                - request_inspection (optional, block):
                    - password_field (optional, block):
                        - identifier (required)
                    - payload_type (required)
                    - username_field (optional, block):
                        - identifier (required)
                - response_inspection (optional, block):
                    - body_contains (optional, block):
                        - failure_strings (required)
                        - success_strings (required)
                    - header (optional, block):
                        - failure_values (required)
                        - name (required)
                        - success_values (required)
                    - json (optional, block):
                        - failure_values (required)
                        - identifier (required)
                        - success_values (required)
                    - status_code (optional, block):
                        - failure_codes (required)
                        - success_codes (required)
            - aws_managed_rules_bot_control_rule_set (optional, block):
                - enable_machine_learning (optional)
                - inspection_level (required)
        - name (required)
        - rule_action_override (optional, block):
            - action_to_use (optional, block):
                - allow (optional, block):
                    - custom_request_handling (optional, block):
                        - insert_header (optional, block):
                            - name (required)
                            - value (required)
                - block (optional, block):
                    - custom_response (optional, block):
                        - custom_response_body_key (optional)
                        - response_code (required)
                        - response_header (optional, block):
                            - name (required)
                            - value (required)
                - captcha (optional, block):
                    - custom_request_handling (optional, block):
                        - insert_header (optional, block):
                            - name (required)
                            - value (required)
                - challenge (optional, block):
                    - custom_request_handling (optional, block):
                        - insert_header (optional, block):
                            - name (required)
                            - value (required)
                - count (optional, block):
                    - custom_request_handling (optional, block):
                        - insert_header (optional, block):
                            - name (required)
                            - value (required)
            - name (required)
        - vendor_name (required)
        - version (optional)
    - rule_group_reference (block):
        - arn (required)
        - rule_action_override (optional, block):
            - action_to_use (optional, block):
                - allow (optional, block):
                    - custom_request_handling (optional, block):
                        - insert_header (optional, block):
                            - name (required)
                            - value (required)
                - block (optional, block):
                    - custom_response (optional, block):
                        - custom_response_body_key (optional)
                        - response_code (required)
                        - response_header (optional, block):
                            - name (required)
                            - value (required)
                - captcha (optional, block):
                    - custom_request_handling (optional, block):
                        - insert_header (optional, block):
                            - name (required)
                            - value (required)
                - challenge (optional, block):
                    - custom_request_handling (optional, block):
                        - insert_header (optional, block):
                            - name (required)
                            - value (required)
                - count (optional, block):
                    - custom_request_handling (optional, block):
                        - insert_header (optional, block):
                            - name (required)
                            - value (required)
            - name (required)
    - visibility_config (block):
        - cloudwatch_metrics_enabled (required)
        - metric_name (required)
        - sampled_requests_enabled (required)
EOT

  type = map(object({
    priority        = number
    rule_name       = string
    web_acl_arn     = string
    override_action = optional(string)
    region          = optional(string)
    managed_rule_group = optional(list(object({
      managed_rule_group_configs = optional(list(object({
        aws_managed_rules_acfp_rule_set = optional(list(object({
          creation_path          = string
          enable_regex_in_path   = optional(bool)
          registration_page_path = string
          request_inspection = optional(list(object({
            address_fields = optional(list(object({
              identifiers = list(string)
            })))
            email_field = optional(list(object({
              identifier = string
            })))
            password_field = optional(list(object({
              identifier = string
            })))
            payload_type = string
            phone_number_fields = optional(list(object({
              identifiers = list(string)
            })))
            username_field = optional(list(object({
              identifier = string
            })))
          })))
          response_inspection = optional(list(object({
            body_contains = optional(list(object({
              failure_strings = set(string)
              success_strings = set(string)
            })))
            header = optional(list(object({
              failure_values = set(string)
              name           = string
              success_values = set(string)
            })))
            json = optional(list(object({
              failure_values = set(string)
              identifier     = string
              success_values = set(string)
            })))
            status_code = optional(list(object({
              failure_codes = set(number)
              success_codes = set(number)
            })))
          })))
        })))
        aws_managed_rules_anti_ddos_rule_set = optional(list(object({
          client_side_action_config = optional(list(object({
            challenge = optional(list(object({
              exempt_uri_regular_expression = optional(list(object({
                regex_string = optional(string)
              })))
              sensitivity     = optional(string)
              usage_of_action = string
            })))
          })))
          sensitivity_to_block = optional(string)
        })))
        aws_managed_rules_atp_rule_set = optional(list(object({
          enable_regex_in_path = optional(bool)
          login_path           = string
          request_inspection = optional(list(object({
            password_field = optional(list(object({
              identifier = string
            })))
            payload_type = string
            username_field = optional(list(object({
              identifier = string
            })))
          })))
          response_inspection = optional(list(object({
            body_contains = optional(list(object({
              failure_strings = set(string)
              success_strings = set(string)
            })))
            header = optional(list(object({
              failure_values = set(string)
              name           = string
              success_values = set(string)
            })))
            json = optional(list(object({
              failure_values = set(string)
              identifier     = string
              success_values = set(string)
            })))
            status_code = optional(list(object({
              failure_codes = set(number)
              success_codes = set(number)
            })))
          })))
        })))
        aws_managed_rules_bot_control_rule_set = optional(list(object({
          enable_machine_learning = optional(bool)
          inspection_level        = string
        })))
      })))
      name = string
      rule_action_override = optional(list(object({
        action_to_use = optional(list(object({
          allow = optional(list(object({
            custom_request_handling = optional(list(object({
              insert_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
          block = optional(list(object({
            custom_response = optional(list(object({
              custom_response_body_key = optional(string)
              response_code            = number
              response_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
          captcha = optional(list(object({
            custom_request_handling = optional(list(object({
              insert_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
          challenge = optional(list(object({
            custom_request_handling = optional(list(object({
              insert_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
          count = optional(list(object({
            custom_request_handling = optional(list(object({
              insert_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
        })))
        name = string
      })))
      vendor_name = string
      version     = optional(string)
    })))
    rule_group_reference = optional(list(object({
      arn = string
      rule_action_override = optional(list(object({
        action_to_use = optional(list(object({
          allow = optional(list(object({
            custom_request_handling = optional(list(object({
              insert_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
          block = optional(list(object({
            custom_response = optional(list(object({
              custom_response_body_key = optional(string)
              response_code            = number
              response_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
          captcha = optional(list(object({
            custom_request_handling = optional(list(object({
              insert_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
          challenge = optional(list(object({
            custom_request_handling = optional(list(object({
              insert_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
          count = optional(list(object({
            custom_request_handling = optional(list(object({
              insert_header = optional(list(object({
                name  = string
                value = string
              })))
            })))
          })))
        })))
        name = string
      })))
    })))
    visibility_config = optional(list(object({
      cloudwatch_metrics_enabled = bool
      metric_name                = string
      sampled_requests_enabled   = bool
    })))
  }))
}

