data "vsphere_datacenter" "dc" {
  name = "labs-den-dc2-demo"
}
data "vsphere_datastore" "datastore" {
  name          = "ESXi-DC2-DEMO-LUN03"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_host" "host" {
  name          = "demo-dc2-esxi-04.prod.dc2.den.morpheusdata.com"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_network" "network" {
  name          = "VLAN0002 - Internal Server 2"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_virtual_machine" "template" {
  name          = "pjubuntu-template"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
