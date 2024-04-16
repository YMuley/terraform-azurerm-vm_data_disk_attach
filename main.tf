# --------- VMDataDiskAttachment ------------
resource "azurerm_virtual_machine_data_disk_attachment" "vm_data_disk_attach" {
  for_each = local.vm_data_disk_attach
  managed_disk_id    = var.managed_disk_output[each.value.managed_disk_name].id//azurerm_managed_disk.example.id
  virtual_machine_id = each.value.resource_type == "linux" ? var.linux_vm_output[each.value.resource_name].id : var.windows_vm_output[each.value.resource_name].id 
  lun                = each.value.lun//"10"
  caching            = each.value.caching//"ReadWrite"
}