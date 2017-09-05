# Create new Azure Resource Group deployment 

resource "azurerm_resource_group" "balerion" {
  name     = "${var.my_resource_group}" // Injected from TF_VAR environment variable
  location = "${var.location}"
}

# Use ARM template deploymet terraform module

resource "azurerm_template_deployment" "balerion" {
  name                = "${var.my_resource_group}"
  resource_group_name = "${azurerm_resource_group.balerion.name}"

  template_body = "${file("/tmp/tfdeployment/armtemplate.json")}"

# The ARM teamplate JSON parameters

  parameters = {
    dnsNamePrefix                   = "${var.dnsNamePrefix}" // Injected from TF_VAR environment variable
    agentVMSize                     = "${var.agentVMSize}"
    linuxAdminUsername              = "${var.linuxAdminUsername}" // Injected from TF_VAR environment variable
    orchestratorType                = "${var.orchestratorType}"
    sshRSAPublicKey                 = "${var.sshRSAPublicKey}" // Injected from TF_VAR environment variable
    servicePrincipalClientId        = "${var.servicePrincipalClientId}" // Injected from TF_VAR environment variable
    servicePrincipalClientSecret    = "${var.servicePrincipalClientSecret}" // Injected from TF_VAR environment variable
  }

provisioner "local-exec" {
  command = "az login --service-principal -u ${var.spn_url} -p ${var.client_secret} --tenant ${var.tenant_id}"
    }

provisioner "local-exec" {
  command = "sleep 60"
    }

provisioner "local-exec" {
  command = "az acs kubernetes get-credentials --resource-group=${var.my_resource_group} --name=containerservice-${var.my_resource_group}"
    }

provisioner "local-exec" {
  command = "run-parts /tmp/tfdeployment/k8s-scripts"
    }         

provisioner "local-exec" {
  command = "kubectl expose deployment nginx --port=80 --type=LoadBalancer"
    } 

  deployment_mode = "Incremental"
}