module "vcloud" {
  source = "./modules/vcloud"

  vcd_vapp_name = var.vcd_vapp_name
  org_network_name = var.vcd_org_network_name
  vcd_vm_cp_name = var.vcd_vm_cp_name
  vcd_cp_name = var.vcd_cp_name
  vcd_catalog_name = var.vcd_catalog_name
  vcd_template_name = var.vcd_template_name
  vcd_vm_cp_memory = var.vcd_vm_cp_memory
  vcd_vm_cp_cpus = var.vcd_vm_cp_cpus
}
