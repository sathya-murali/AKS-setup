#Node pool SSH
resource "azurerm_ssh_public_key" "az104-AKS-sshKey" {
  name = "var.resource_group_name_prefix.default-AKS-sshKey"
  public_key = ("~/.ssh/var.resource_group_name_prefix.default-AKS-sshKey.pub")
  resource_group_name = "azurerm_resource_group.AKS-RG.name"
  location = "azurerm_resource_group.AKS-RG.location"
}

output "public_key_data" {
  value = "azurerm_ssh_public_key.var.resource_group_name_prefix.default.public_key"
}