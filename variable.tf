variable "vm_data_disk_attach_list" {
    type = list(any)
    default = []
    description = "list of virtual machine and data disk association objects"  
}

variable "managed_disk_output" {
    type = map(any)
    default = {}
    description = "Outputs of managed disk objects"  
}

variable "linux_vm_output" {
    type = map(any)
    default = {}
    description = "Outputs of virtual machine objects"  
}

variable "windows_vm_output" {
    type = map(any)
    default = {}
    description = "Outputs of windows virtual machine objects"
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resource if not any"
}