variable "server_name" {
  description = "The name of the server"
  type        = string
  default     = "ENTER_NAME_HERE"
}

variable "server_cpu" {
  description = "Number of CPUs"
  type        = number
  default     = 4
}

variable "server_mem" {
  description = "RAM for server in MB"
  type        = number
  default     = 8192
}

variable "server_ip" {
  description = "Ipaddress of server"
  type        = string
  default     = "ENTER_IP_HERE"
}

locals {
  vsphere_folder  = "NonProdMorpheus"
  disk_label      = "disk0"
  disk_size       = 80
  admin_password  = "Pa$$w0rd1"
  ipv4_netmask    = 24
  dns_server_list = ["172.30.119.150" , "172.30.119.151"]  
  ipv4_gateway    = "172.30.117.237"
}
