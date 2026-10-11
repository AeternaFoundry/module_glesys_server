variable "servers" {
  description = <<EOT
Map of servers, attributes below
Required:
    - bandwidth
    - cpu
    - datacenter
    - hostname
    - memory
    - storage
Optional:
    - campaigncode
    - cloudconfig
    - cloudconfigparams
    - description
    - ipv4_address
    - ipv6_address
    - keepip
    - password
    - platform
    - primary_networkadapter_network
    - publickey
    - template
    - backups_schedule (block):
        - frequency (required)
        - retention (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
    - user (block):
        - password (optional)
        - publickeys (required)
        - username (required)
EOT

  type = map(object({
    bandwidth                      = number
    cpu                            = number
    datacenter                     = string
    hostname                       = string
    memory                         = number
    storage                        = number
    campaigncode                   = optional(string)
    cloudconfig                    = optional(string)
    cloudconfigparams              = optional(map(string))
    description                    = optional(string)
    ipv4_address                   = optional(string)
    ipv6_address                   = optional(string)
    keepip                         = optional(bool)
    password                       = optional(string)
    platform                       = optional(string)
    primary_networkadapter_network = optional(string)
    publickey                      = optional(string)
    template                       = optional(string)
    backups_schedule = optional(list(object({
      frequency = string
      retention = number
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
    user = optional(list(object({
      password   = optional(string)
      publickeys = list(string)
      username   = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.servers : (
        v.backups_schedule == null || alltrue([for item in v.backups_schedule : (contains(["daily", "weekly"], item.frequency))])
      )
    ])
    error_message = "must be one of: \"daily\", \"weekly\""
  }
}

