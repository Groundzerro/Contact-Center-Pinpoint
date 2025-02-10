output "instance_id" {
  value = module.connect_instance.instance_id
}

output "queue_id" {
  value = module.queue.queue_id
}

output "routing_profile_id" {
  value = module.routing_profile.routing_profile_id
}

output "security_profile_id" {
  value = module.security_profile.security_profile_id
}

output "contact_flow_id" {
  value = module.contact_flow.contact_flow_id
}

output "hours_of_operation_id" {
  value = module.hours_of_operation.hours_of_operation_id
}

# output "phone_number_id" {
#   value = module.phone_number.phone_number_id
# }
