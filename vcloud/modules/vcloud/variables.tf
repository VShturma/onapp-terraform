variable "vcd_vapp_name" {
  description = "vApp name"
  default = "OnApp"
}

variable "vcd_org_network_name" {
  description = "vApp org network name"
}

variable "vcd_vm_cp_name" {
  description = "CP VM name"
  default = "cp"
}

variable "vcd_vm_cp_computer_name" {
  description = "CP VM computer name"
  default = "cp.localdomain"
}

variable "vcd_catalog_name" {
  description = "Catalog name for VM templates"
}

variable "vcd_template_name" {
  description = "Template name for VMs"
}

variable "vcd_vm_cp_memory" {
  description = "Amount of CP VM memory"
  default = 4096
}

variable "vcd_vm_cp_cpus" {
  description = "Amount of CP VM CPUs"
  default = 2
}
