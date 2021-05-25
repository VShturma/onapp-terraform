resource "vcd_vapp" "onapp" {
  name = var.vapp_name
}

resource "vcd_vapp_org_network" "onapp-public" {
  vapp_name = vcd_vapp.onapp.name
  org_network_name = var.org_network_name
}

resource "vcd_vapp_vm" "cp" {
  vapp_name = vcd_vapp.onapp.name
  name = var.vm_cp_name
  computer_name = var.vm_cp_computer_name
  catalog_name = var.vm_cp_catalog_name
  template_name = var.vm_cp_template_name
  memory = var.vm_cp_memory
  cpus = var.vm_cp_cpus
  network {
    type = "org"
    name = "10.77.0.1/24"
    ip_allocation_mode = "MANUAL"
    ip = "10.77.0.235"
    connected = true
  }
  customization {
    enabled = true
  }
}
