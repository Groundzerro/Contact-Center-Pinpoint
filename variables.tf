variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile for authentication"
  type        = string
  default     = "default"
}

variable "pinpoint_name" {
  description = "Name of the Pinpoint application"
  type        = string
}

variable "sms_sender_id" {
  description = "Sender ID for SMS messages"
  type        = string
  default     = null
}

# variable "sms_short_code" {
#   description = "Short code for sending SMS messages. Must be pre-approved."
#   type        = string
# }



# variable "sms_origination_number" {
#   description = "Origination number for SMS messages"
#   type        = string
#   default     = null
# }

# variable "sms_message_type" {
#   description = "Type of SMS message (TRANSACTIONAL or PROMOTIONAL)"
#   type        = string
#   default     = "TRANSACTIONAL"
# }
