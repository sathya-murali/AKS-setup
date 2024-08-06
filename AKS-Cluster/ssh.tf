#Node pool SSH
#resource "azurerm_ssh_public_key" "az104-AKS-sshKey" {
#  name = "var.resource_group_name_prefix.default-AKS-sshKey"
#  public_key = ("C:/users/sathya/.ssh/var.resource_group_name_prefix.default-AKS-sshKey.pub")
#  resource_group_name = "azurerm_resource_group.AKS-RG.name"
#  location = "azurerm_resource_group.AKS-RG.location"
#}

#output "public_key_data" {
#  value = "azurerm_ssh_public_key.var.resource_group_name_prefix.default.public_key"
#}

#resource "azapi_resource_action" "ssh_public_keygen" {
#  type =  "Microsoft.Compute/sshPublicKey@2022-11-01"
#  resource_id = "azapi_resource.ssh_public_key.id"
#  action = "generateKeyPair"
#}

#resource "azapi_resource" "ssh_public_key" {
#  id
#}

resource "tls_private_key" "ssh_private_key" {
  algorithm = "RSA"
  rsa_bits = 4096
}

output "privateKey" {
  value = tls_private_key.ssh_private_key.private_key_openssh
  sensitive = true
}

output "privateKeypem" {
  value = tls_private_key.ssh_private_key.private_key_pem
  sensitive = true
}
