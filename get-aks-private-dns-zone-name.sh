#!/bin/bash
set -e

eval "$(jq -r '@sh "aksNodesResourceGroup=\(.aksNodesResourceGroup)"')"

aksPrivateDnsZone=$(az network private-dns zone list \
    -g $aksNodesResourceGroup \
    --query [0].name \
    -o tsv)

jq -n --arg aksPrivateDnsZone "$aksPrivateDnsZone" '{"aks_private_dns_zone":$aksPrivateDnsZone}'
