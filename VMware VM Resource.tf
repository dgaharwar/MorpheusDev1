## Configure the vSphere Provider
resource "vsphere_virtual_machine" "vm" {
  count             = 1
  name              = var.server_name
  folder            = local.vsphere_folder
  resource_pool_id = "${data.vsphere_host.host.resource_pool_id}"
  datastore_id      = "${data.vsphere_datastore.datastore.id}"

    num_cpus = var.server_cpu
    memory   = var.server_mem
    guest_id = "${data.vsphere_virtual_machine.template.guest_id}"

    wait_for_guest_net_timeout = 0
    wait_for_guest_net_routable = false

    network_interface {
      network_id = "${data.vsphere_network.network.id}"
    }

    disk {
      label = local.disk_label
      size  = local.disk_size
      eagerly_scrub = true
      thin_provisioned = false
    }

    clone {
      template_uuid="${data.vsphere_virtual_machine.template.id}"

    customize {

      windows_options {
      computer_name = var.server_name
      admin_password = local.admin_password
     }

      network_interface {
        ipv4_address = var.server_ip
        ipv4_netmask = local.ipv4_netmask
        dns_server_list= local.dns_server_list
      }

      ipv4_gateway = local.ipv4_gateway
    }

    }
}
