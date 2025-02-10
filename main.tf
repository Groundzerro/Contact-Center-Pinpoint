# provider "aws" {
#   region = var.aws_profile
# }

# module "iam" {
#   source = "./modules/iam"
#   pinpoint_application_name = var.pinpoint_application_name
# }

# resource "aws_pinpoint_app" "sms_app" {
#   name = var.pinpoint_name
# }

# resource "aws_pinpoint_sms_channel" "sms_channel" {
#   application_id = aws_pinpoint_app.sms_app.application_id
#   enabled        = true
#   sender_id      = var.sms_sender_id
#   short_code     = var.sms_short_code
# }

# output "pinpoint_application_id" {
#   value = aws_pinpoint_app.sms_app.application_id
# }


module "pinpoint" {
  source                   = "./modules/pinpoint"
  pinpoint_name            = var.pinpoint_name
  sms_sender_id            = var.sms_sender_id
  # sms_origination_number   = var.sms_origination_number
  # sms_message_type         = var.sms_message_type
}
