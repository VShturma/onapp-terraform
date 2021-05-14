resource "vcd_vapp" "onapp" {
  name = "onapp"
}

resource "vcd_vapp_org_network" "onapp-public" {
  vapp_name = vcd_vapp.onapp.name
  org_network_name = "10.77.0.1/24"
}
