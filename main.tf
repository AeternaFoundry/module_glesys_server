resource "glesys_server" "servers" {
  for_each = var.servers

  bandwidth                      = each.value.bandwidth
  cpu                            = each.value.cpu
  datacenter                     = each.value.datacenter
  hostname                       = each.value.hostname
  memory                         = each.value.memory
  storage                        = each.value.storage
  campaigncode                   = each.value.campaigncode
  cloudconfig                    = each.value.cloudconfig
  cloudconfigparams              = each.value.cloudconfigparams
  description                    = each.value.description
  ipv4_address                   = each.value.ipv4_address
  ipv6_address                   = each.value.ipv6_address
  keepip                         = each.value.keepip
  password                       = each.value.password
  platform                       = each.value.platform
  primary_networkadapter_network = each.value.primary_networkadapter_network
  publickey                      = each.value.publickey
  template                       = each.value.template

  dynamic "backups_schedule" {
    for_each = each.value.backups_schedule != null ? each.value.backups_schedule : []
    content {
      frequency = backups_schedule.value.frequency
      retention = backups_schedule.value.retention
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }

  dynamic "user" {
    for_each = each.value.user != null ? each.value.user : []
    content {
      password   = user.value.password
      publickeys = user.value.publickeys
      username   = user.value.username
    }
  }
}

