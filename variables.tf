variable "instance_alias" {
  type        = string
  description = "Alias name of the instance"
}

variable "identity_management_type" {
  type        = string
  description = "Identity management type. Accepted Values: SAML, CONNECT_MANAGED, EXISTING_DIRECTORY"
}

variable "contact_flow_type" {
  type        = string
  description = "Type of contact flow"
  default     = "CONTACT_FLOW"
}

variable "common_name" {
  type        = string
  description = "A common name of the Amazon Connect resources"
}

variable "lambda_function_arn" {
  type        = string
  description = "ARN of the lambda function for association with connect instance"
}

variable "time_zone" {
  type        = string
  description = "Time zone for hours of operation"
  default     = "EST"
}

# variable "phone_number" {
#   type        = string
#   description = "Phone number to claim for the contact center"
# }
