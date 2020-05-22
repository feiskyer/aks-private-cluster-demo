variable resource_group_name {
  default = "myResourceGroup"     # TODO: replace this
}

variable cluster_name {
  default = "myPrivateCluster"    # TODO: replace this
}

variable custom_dns {
  default = "<custom-dns-IP>"     # TODO: replace this
}

variable custom_dns_vnet_id {
  default = "<custom-dns-VNet-ID" # TODO: replace this
}

variable "client_id" {
  default = "<client-id>"         # TODO: replace this
}
variable "client_secret" {
  default = "<client-secret>"     # TODO: replace this
}

variable "agent_count" {
  default = 3
}

variable "kubernetes_version" {
  default = "1.15.10"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
  default = "aks"
}

variable location {
  default = "East US"
}
