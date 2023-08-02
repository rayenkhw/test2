provider "vsphere" {
  user = "RKI"
  password = "884@xk@pFC"
  vcenter_server = "vc-vstack-017-lab.virtualstack.tn"
  datacenter = "vc-vstack-017-lab.virtualstack.tn"
  datastore = "ds001-lab-ucs02-svc1-stor3-dtx1"
  resource_pool = "Clu001-UCS02-PRD"
  folder = "DTX1/rayen"
}

resource "vsphere_virtual_machine" "ubuntu" {
  name = "pipelinecreate"
  template_name = "ubuntu"
  num_cpus = 2
  memory = 6000

  network_interface {
    network_id = "VLAN_LAB"
  }
}