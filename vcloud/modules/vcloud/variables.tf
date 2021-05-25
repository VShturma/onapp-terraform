variable "vapp_name" {
  description = "vApp name"
  default = "OnApp"
}

variable "org_network_name" {
  description = "vApp org network name"
}

variable "vm_cp_name" {
  description = "CP VM name"
  default = "cp"
}

variable "vm_cp_computer_name" {
  description = "CP VM computer name"
  default = "cp.localdomain"
}

variable "vm_cp_catalog_name" {
  description = "Catalog name for VM templates"
}

variable "vm_cp_template_name" {
  description = "Template name for VMs"
}

variable "vm_cp_memory" {
  description = "Amount of CP VM memory"
  default = 4096
}

variable "vm_cp_cpus" {
  description = "Amount of CP VM CPUs"
  default = 2
}
