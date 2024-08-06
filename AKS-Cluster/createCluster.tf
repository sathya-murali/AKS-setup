#Create Resource Group
resource "azurerm_resource_group" "AKS-RG" {
  name = "az104-AKS-RG"
  location = "eastus"
}

resource "azurerm_kubernetes_cluster" "nectarGrpCluster" {
  name = "nectarGrpCluster"
  location = azurerm_resource_group.AKS-RG.location
  resource_group_name = azurerm_resource_group.AKS-RG.name
  dns_prefix = "nectarGrpCluster-dns"

  service_principal {
    client_id = "7a95d305-ef12-46b7-93c1-a401faf8554e"
    client_secret = "e-18Q~O2RvSnG_AaiIHQEvBf9SLWHNFREZaMAarI"
  }

  default_node_pool {
    name = "nectnodepool"
    vm_size = "Standard_DS2_v2"
    node_count = var.default_node_count
    os_disk_size_gb = 30
  }

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "standard"
  }

}