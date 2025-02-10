module "connect_instance" {
  source = "./modules/connect_instance"

  instance_alias           = var.instance_alias
  identity_management_type = var.identity_management_type
  lambda_function_arn      = var.lambda_function_arn
}

module "hours_of_operation" {
  source = "./modules/hours_of_operation"

  instance_id = module.connect_instance.instance_id
  common_name = var.common_name
  time_zone   = var.time_zone
}

module "queue" {
  source = "./modules/queue"

  instance_id           = module.connect_instance.instance_id
  common_name           = var.common_name
  hours_of_operation_id = module.hours_of_operation.hours_of_operation_id
}

module "routing_profile" {
  source = "./modules/routing_profile"

  instance_id               = module.connect_instance.instance_id
  common_name               = var.common_name
  default_outbound_queue_id = module.queue.queue_id
}

module "security_profile" {
  source = "./modules/security_profile"

  instance_id = module.connect_instance.instance_id
  common_name = var.common_name
}

module "contact_flow" {
  source = "./modules/contact_flow"

  instance_id         = module.connect_instance.instance_id
  common_name         = var.common_name
  contact_flow_type   = var.contact_flow_type
  lambda_function_arn = var.lambda_function_arn
}

# module "phone_number" {
#   source = "./modules/phone_number"

#   instance_id  = module.connect_instance.instance_id
#   phone_number = var.phone_number
# }
