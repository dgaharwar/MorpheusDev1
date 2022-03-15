data "vsphere_datacenter" "dc" {
  name = "NonProd"
}
data "vsphere_datastore" "datastore" {
  name          = "vdn_ds19"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_host" "host" {
  name          = "sgnthpesxcn116.na.cobank2.corp"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_network" "network" {
  name          = "NPFGi-172.30.117"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_virtual_machine" "template" {
  name          = "2019_R1_Morpheus"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
