resource "vcd_vapp" "onapp" {
  name = "onapp"
}

resource "vcd_vapp_org_network" "onapp-public" {
  vapp_name = vcd_vapp.onapp.name
  org_network_name = "10.77.0.1/24"
}

resource "vcd_vapp_vm" "cp" {
  vapp_name = vcd_vapp.onapp.name
  name = "cp"
  computer_name = "cp"
  catalog_name = "ShturmaCatalog"
  template_name = "CentOS7template"
  memory = 4096
  cpus = 2
  network {
    type = "org"
    name = "management"
    ip_allocation_mode = "MANUAL"
    ip = "10.77.0.235"
    connected = true
  }
  customization {
    enabled = true
  }
}
