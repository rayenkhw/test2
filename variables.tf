variable "vsphere_server" {
  default = "stack.tn"
  type    = string
}

variable "vsphere_user" {
  default = ""
  type    = string
}

variable "vsphere_password" {
  default   = ""
  type      = string
  sensitive = true
}

variable "datacenter" {
  default = "D1"
  type    = string
}

variable "cluster" {
  default = "Clu00"
  type    = string
}

variable "datastore" {
  default = "ds001-la"
  type    = string
}

variable "network_name" {
  default = "VLAN_LAB"
  type    = string
}
variable "template" {
  description = "IP or DNS name to connect to vCenter server"
  type        = string
  default     = "ubuntu"
}