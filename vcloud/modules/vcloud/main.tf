resource "vcd_vapp" "onapp" {
  name = var.vcd_vapp_name
}

resource "vcd_vapp_org_network" "onapp-public" {
  vapp_name = vcd_vapp.onapp.name
  org_network_name = var.vcd_org_network_name
}

resource "vcd_vapp_vm" "cp" {
  vapp_name = vcd_vapp.onapp.name
  name = var.vcd_vm_cp_name
  computer_name = var.vcd_vm_cp_computer_name
  catalog_name = var.vcd_catalog_name
  template_name = var.vcd_template_name
  memory = var.vcd_vm_cp_memory
  cpus = var.vcd_vm_cp_cpus
  network {
    type = "org"
    name = "10.77.0.1/24"
    ip_allocation_mode = "POOL"
    connected = true
  }
  customization {
    enabled = true
  }
}
