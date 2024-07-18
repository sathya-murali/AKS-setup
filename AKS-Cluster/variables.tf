#Creating variables for k8 cluster
variable "resource_group_name_prefix" {
  type = string
  default = "az104-"
  description = "Prefix Resource Group Name"
}

variable "default_node_count" {
  type = number
  default = 1
  description = "Default Node Pool to be created"
}