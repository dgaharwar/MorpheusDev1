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
      eagerly_scrub = false
      thin_provisioned = true
    }

    clone {
      template_uuid="${data.vsphere_virtual_machine.template.id}"

    customize {

      network_interface {
        ipv4_address = var.server_ip
      }

    }

    }
}
