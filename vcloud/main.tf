resource "vcd_network_direct" "onapp-public" {
  name = "onapp-public"
  external_network = "app"
}

resource "vcd_vapp" "onapp" {
  name = "onapp"
}

resource "vcd_vapp_org_network" "onapp-public" {
  vapp_name = vcd_vapp.onapp.name
  org_network_name = vcd_network_direct.onapp-public.name
}
