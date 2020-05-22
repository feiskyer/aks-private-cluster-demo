# Setup AKS Private Cluster with BYO DNS

## Pre-requirements

* Azure CLI and terraform installed locally
* Pre-configure DNS servers outside of AKS VNet
* Forward AKS cluster FQDN `azmk8s.io` (or only private cluster FQDN `privatelink.<region>.azmk8s.io`) to Azure DNS `168.63.129.16`
* Get the DNS servers IP address, which would be set in `custom_dns` on next section
* Get the DNS server's VNet resource ID, which would be set in `custom_dns_vnet_id` on next section

> Refer [dns-server](dns-server/README.md) for example configuration with bind.

## How to deploy

Modify the required parameters in [variables.tf](variables.tf), which include:

* resource_group_name
* cluster_name
* custom_dns
* custom_dns_vnet_id
* client_id
* client_secret

Then run the terraform command to deploy private cluster:

```sh
terraform init
terraform apply
```
