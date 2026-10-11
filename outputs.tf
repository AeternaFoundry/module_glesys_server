output "servers_id" {
  description = "Map of id values across all servers, keyed the same as var.servers except keys with no id are omitted"
  value       = { for k, v in glesys_server.servers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "servers_backups_schedule" {
  description = "Map of backups_schedule values across all servers, keyed the same as var.servers except keys with no backups_schedule are omitted"
  value       = { for k, v in glesys_server.servers : k => v.backups_schedule if v.backups_schedule != null && length(v.backups_schedule) > 0 }
}
output "servers_bandwidth" {
  description = "Map of bandwidth values across all servers, keyed the same as var.servers except keys with no bandwidth are omitted"
  value       = { for k, v in glesys_server.servers : k => v.bandwidth if v.bandwidth != null }
}
output "servers_campaigncode" {
  description = "Map of campaigncode values across all servers, keyed the same as var.servers except keys with no campaigncode are omitted"
  value       = { for k, v in glesys_server.servers : k => v.campaigncode if v.campaigncode != null && length(v.campaigncode) > 0 }
}
output "servers_cloudconfig" {
  description = "Map of cloudconfig values across all servers, keyed the same as var.servers except keys with no cloudconfig are omitted"
  value       = { for k, v in glesys_server.servers : k => v.cloudconfig if v.cloudconfig != null && length(v.cloudconfig) > 0 }
}
output "servers_cloudconfigparams" {
  description = "Map of cloudconfigparams values across all servers, keyed the same as var.servers except keys with no cloudconfigparams are omitted"
  value       = { for k, v in glesys_server.servers : k => v.cloudconfigparams if v.cloudconfigparams != null && length(v.cloudconfigparams) > 0 }
}
output "servers_cpu" {
  description = "Map of cpu values across all servers, keyed the same as var.servers except keys with no cpu are omitted"
  value       = { for k, v in glesys_server.servers : k => v.cpu if v.cpu != null }
}
output "servers_datacenter" {
  description = "Map of datacenter values across all servers, keyed the same as var.servers except keys with no datacenter are omitted"
  value       = { for k, v in glesys_server.servers : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "servers_description" {
  description = "Map of description values across all servers, keyed the same as var.servers except keys with no description are omitted"
  value       = { for k, v in glesys_server.servers : k => v.description if v.description != null && length(v.description) > 0 }
}
output "servers_extra_disks" {
  description = "Map of extra_disks values across all servers, keyed the same as var.servers except keys with no extra_disks are omitted"
  value       = { for k, v in glesys_server.servers : k => v.extra_disks if v.extra_disks != null && length(v.extra_disks) > 0 }
}
output "servers_hostname" {
  description = "Map of hostname values across all servers, keyed the same as var.servers except keys with no hostname are omitted"
  value       = { for k, v in glesys_server.servers : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "servers_ipv4_address" {
  description = "Map of ipv4_address values across all servers, keyed the same as var.servers except keys with no ipv4_address are omitted"
  value       = { for k, v in glesys_server.servers : k => v.ipv4_address if v.ipv4_address != null && length(v.ipv4_address) > 0 }
}
output "servers_ipv6_address" {
  description = "Map of ipv6_address values across all servers, keyed the same as var.servers except keys with no ipv6_address are omitted"
  value       = { for k, v in glesys_server.servers : k => v.ipv6_address if v.ipv6_address != null && length(v.ipv6_address) > 0 }
}
output "servers_islocked" {
  description = "Map of islocked values across all servers, keyed the same as var.servers except keys with no islocked are omitted"
  value       = { for k, v in glesys_server.servers : k => v.islocked if v.islocked != null }
}
output "servers_isrunning" {
  description = "Map of isrunning values across all servers, keyed the same as var.servers except keys with no isrunning are omitted"
  value       = { for k, v in glesys_server.servers : k => v.isrunning if v.isrunning != null }
}
output "servers_keepip" {
  description = "Map of keepip values across all servers, keyed the same as var.servers except keys with no keepip are omitted"
  value       = { for k, v in glesys_server.servers : k => v.keepip if v.keepip != null }
}
output "servers_memory" {
  description = "Map of memory values across all servers, keyed the same as var.servers except keys with no memory are omitted"
  value       = { for k, v in glesys_server.servers : k => v.memory if v.memory != null }
}
output "servers_network_adapters" {
  description = "Map of network_adapters values across all servers, keyed the same as var.servers except keys with no network_adapters are omitted"
  value       = { for k, v in glesys_server.servers : k => v.network_adapters if v.network_adapters != null && length(v.network_adapters) > 0 }
}
output "servers_password" {
  description = "Map of password values across all servers, keyed the same as var.servers except keys with no password are omitted"
  value       = { for k, v in glesys_server.servers : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "servers_platform" {
  description = "Map of platform values across all servers, keyed the same as var.servers except keys with no platform are omitted"
  value       = { for k, v in glesys_server.servers : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "servers_primary_networkadapter_network" {
  description = "Map of primary_networkadapter_network values across all servers, keyed the same as var.servers except keys with no primary_networkadapter_network are omitted"
  value       = { for k, v in glesys_server.servers : k => v.primary_networkadapter_network if v.primary_networkadapter_network != null && length(v.primary_networkadapter_network) > 0 }
}
output "servers_publickey" {
  description = "Map of publickey values across all servers, keyed the same as var.servers except keys with no publickey are omitted"
  value       = { for k, v in glesys_server.servers : k => v.publickey if v.publickey != null && length(v.publickey) > 0 }
}
output "servers_storage" {
  description = "Map of storage values across all servers, keyed the same as var.servers except keys with no storage are omitted"
  value       = { for k, v in glesys_server.servers : k => v.storage if v.storage != null }
}
output "servers_template" {
  description = "Map of template values across all servers, keyed the same as var.servers except keys with no template are omitted"
  value       = { for k, v in glesys_server.servers : k => v.template if v.template != null && length(v.template) > 0 }
}
output "servers_user" {
  description = "Map of user values across all servers, keyed the same as var.servers except keys with no user are omitted"
  value       = { for k, v in glesys_server.servers : k => v.user if v.user != null && length(v.user) > 0 }
  sensitive   = true
}

