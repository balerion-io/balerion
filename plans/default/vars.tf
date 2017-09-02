# Declare Azure variables#
##########################

variable "subscription_id" {default = "e73c1dbe-2574-4f38-9e8f-c813757b1786"}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {default = "72f988bf-86f1-41af-91ab-2d7cd011db47"}
variable "spn_url" {default = "http://azure-cli-2017-08-26-05-25-55"}
variable "location" {default = "West Europe"}
variable "my_resource_group" {}
variable "resourceName" {default = balerion}
variable "dnsNamePrefix" {}
variable "masterDnsNamePrefix" {default = "k8smaster"}
variable "agentDnsNamePrefix" {default = "k8sagent"}
variable "agentCount" {default = "1"}
variable "agentVMSize" {default = "Standard_D2_v2"}
variable "linuxAdminUsername" {}
variable "windowsAgentAdminUsername" {default = "labadmin"}
variable "windowsAgentAdminPassword" {default = "Passw0rd123$"}
variable "orchestratorType" {default = "Kubernetes"}
variable "masterCount" {default = "1"}
variable "sshRSAPublicKey" {}
variable "enableDiagnostics" {default = false}
variable "servicePrincipalClientId" {}
variable "servicePrincipalClientSecret" {}
variable "osType" {default = "Linux"}
variable "ukRegion" {default = false}