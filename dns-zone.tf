data "external" "get_aks_private_dns_zone_name" {
  program = ["/bin/sh", "${path.module}/get-aks-private-dns-zone-name.sh"]

  query = {
    aksNodesResourceGroup = azurerm_kubernetes_cluster.aks.node_resource_group
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "private_dns_vnet_link_aks_jb" {
  name                  = "private-dns-link"
  resource_group_name   = azurerm_kubernetes_cluster.aks.node_resource_group
  private_dns_zone_name = data.external.get_aks_private_dns_zone_name.result.aks_private_dns_zone
  virtual_network_id    = var.custom_dns_vnet_id
  registration_enabled  = false
}
