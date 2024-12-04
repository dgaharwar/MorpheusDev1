variable "vsphere_server" {
  type        = string
}

variable "vsphere_user" {
  type        = string
}

variable "vsphere_password" {
  type        = string
}

variable "server_name" {
  description = "The name of the server"
  type        = string
  default     = "ENTER_NAME_HERE"
}

variable "server_cpu" {
  description = "Number of CPUs"
  type        = number
  default     = 1
}

variable "server_mem" {
  description = "RAM for server in MB"
  type        = number
  default     = 512
}

variable "server_ip" {
  description = "Ipaddress of server"
  type        = string
  default     = "ENTER_IP_HERE"
}

locals {
  vsphere_folder  = "Sandbox"
  disk_label      = "disk0"
  disk_size       = 5
  ipv4_netmask    = 24
}

