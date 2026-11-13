output "servers_id" {
  description = "Map of id values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.id }
}
output "servers_backups_schedule" {
  description = "Map of backups_schedule values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.backups_schedule }
}
output "servers_bandwidth" {
  description = "Map of bandwidth values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.bandwidth }
}
output "servers_campaigncode" {
  description = "Map of campaigncode values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.campaigncode }
}
output "servers_cloudconfig" {
  description = "Map of cloudconfig values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.cloudconfig }
}
output "servers_cloudconfigparams" {
  description = "Map of cloudconfigparams values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.cloudconfigparams }
}
output "servers_cpu" {
  description = "Map of cpu values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.cpu }
}
output "servers_datacenter" {
  description = "Map of datacenter values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.datacenter }
}
output "servers_description" {
  description = "Map of description values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.description }
}
output "servers_extra_disks" {
  description = "Map of extra_disks values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.extra_disks }
}
output "servers_hostname" {
  description = "Map of hostname values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.hostname }
}
output "servers_ipv4_address" {
  description = "Map of ipv4_address values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.ipv4_address }
}
output "servers_ipv6_address" {
  description = "Map of ipv6_address values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.ipv6_address }
}
output "servers_islocked" {
  description = "Map of islocked values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.islocked }
}
output "servers_isrunning" {
  description = "Map of isrunning values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.isrunning }
}
output "servers_keepip" {
  description = "Map of keepip values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.keepip }
}
output "servers_memory" {
  description = "Map of memory values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.memory }
}
output "servers_network_adapters" {
  description = "Map of network_adapters values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.network_adapters }
}
output "servers_password" {
  description = "Map of password values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.password }
  sensitive   = true
}
output "servers_platform" {
  description = "Map of platform values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.platform }
}
output "servers_primary_networkadapter_network" {
  description = "Map of primary_networkadapter_network values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.primary_networkadapter_network }
}
output "servers_publickey" {
  description = "Map of publickey values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.publickey }
}
output "servers_storage" {
  description = "Map of storage values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.storage }
}
output "servers_template" {
  description = "Map of template values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.template }
}
output "servers_user" {
  description = "Map of user values across all servers, keyed the same as var.servers"
  value       = { for k, v in glesys_server.servers : k => v.user }
  sensitive   = true
}

