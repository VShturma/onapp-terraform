module "vcloud" {
  source = "./modules/vcloud"

  vapp_name = var.vcd_vapp_name
  org_network_name = var.vcd_vapp_network_name
  vm_cp_name = var.vcd_cp_name
  vm_cp_computer_name = var.vcd_cp_name
  vm_cp_catalog_name = var.vcd_catalog_name
  vm_cp_template_name = var.vcd_template_name
  vm_cp_memory = var.vcd_cp_memory
  vm_cp_cpus = var.vcd_cp_cpus
}
