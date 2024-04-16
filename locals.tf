locals {
  vm_data_disk_attach = {for vm_data_disk_attach in var.vm_data_disk_attach_list : vm_data_disk_attach.managed_disk_name => vm_data_disk_attach}
}