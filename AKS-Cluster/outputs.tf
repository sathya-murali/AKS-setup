output "resource_group_name" {
  value = azurerm_resource_group.AKS-RG.name
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.nectarGrpCluster.name
}

#output "azurerm_ssh_public_key" {
#  value = azurerm_ssh_public_key.az104-AKS-sshKey.public_key
#}

