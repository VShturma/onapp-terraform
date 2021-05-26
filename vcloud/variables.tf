##########################
# vCloud connection info #
##########################

variable "vcd_user" {
  description = "vCloud username"
}

variable "vcd_pass" {
  description = "vCloud password"
}

variable "vcd_org" {
  description = "vCloud Organization"
}

variable "vcd_vdc" {
  description = "vCloud Virtual Datacenter"
}

variable "vcd_url" {
  description = "vCloud URL"
}

variable "allow_unverified_ssl" {
  description = "Allow connection to self-signed VCD SSL certificates"
}

##############################
# General vCloud vApp config #
##############################

variable "vcd_vapp_name" {
  description = "vApp name"
  default = "OnApp"
}

variable "vcd_org_network_name" {
  description = "vApp org network name"
  default = "10.77.0.1/24"
}

variable "vcd_catalog_name" {
  description = "Catalog name for VM templates"
  default = "ShturmaCatalog"
}

variable "vcd_template_name" {
  description = "Template name for VMs"
  default = "CentOS7tmpl"
}

#######################
# vCloud CP VM config #
#######################

variable "vcd_vm_cp_memory" {
  description = "Amount of CP VM memory"
  default = 4096
}

variable "vcd_vm_cp_cpus" {
  description = "Amount of CP VM CPUs"
  default = 2
}

variable "vcd_vm_cp_name" {
  description = "CP VM name"
  default = "cp"
}

variable "vcd_vm_cp_computer_name" {
  description = "CP VM computer name"
  default = "cp.localdomain"
}
