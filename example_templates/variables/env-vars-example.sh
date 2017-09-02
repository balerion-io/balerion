# Secret environment variables to be injected to the bootstrap Docker container
#################################################################################
TF_VAR_client_id="your SPN app id"
TF_VAR_client_secret="your SPN app secret"

# Terraform plan environment variables to be injected to the bootstrap Docker container
#########################################################################################
TF_VAR_my_resource_group="Azure Resource Group name"
TF_VAR_resourceName="Azure Container Service deployment name"

# Terraform "azurerm_template_deployment" ARM template parameters environment variables to be injected to the bootstrap Docker container
#########################################################################################################################################
TF_VAR_dnsNamePrefix="K8s dns name"
TF_VAR_servicePrincipalClientId="your SPN app id"
TF_VAR_servicePrincipalClientSecret="your SPN app secret"
TF_VAR_linuxAdminUsername="Your linux admin user name for accessing K8s master nodes"
TF_VAR_sshRSAPublicKey="SSH public key used to deploy K8s cluster"