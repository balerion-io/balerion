#!/bin/sh

# Replace secret environment variables

sed -i "s|myclientid|$client_id|g" /tmp/tfdeployment/secret.tfvars

sed -i "s|myclientsecret|$client_secret|g" /tmp/tfdeployment/secret.tfvars

# Replace Terraform plan environment variables

sed -i "s| myresourcegroup|$my_resource_group|g" /tmp/tfdeployment/vars.tf

commit commit