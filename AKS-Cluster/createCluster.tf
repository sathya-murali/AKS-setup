#Create Resource Group
resource "azurerm_resource_group" "AKS-RG" {
  name = "var.resource_group_name_prefix.default-AKS-RG"
  location = "East US2"
}

resource "azurerm_kubernetes_cluster" "nectarGrpCluster" {
  name = "nectarGrpCluster"
  location = "azurerm_resource_group.AKS-RG.location"
  resource_group_name = "azurerm_resource_group.AKS-RG.name"
  dns_prefix = "azurerm_kubernetes_cluster.nectarGrpCluster.name-dns"

  default_node_pool {
    name = "nectarGrpNodePool"
    vm_size = "Standard_DS2_v2"
    node_count = "var.default_node_count.default"
  }

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "standard"
  }

}