############################################################
# Dockerfile to build Balerion Terraform bootstrap container image

############################################################

# Set the base image
FROM lkacr.azurecr.io/dev/gizmo:0.3.5

# File Author / Maintainer
MAINTAINER Lior Kamrat

# Change working directory to where all the terraform and deployment files are
WORKDIR /tmp/tfdeployment/

# Run the terraform plan to deploy K8s ARM deployment and the requested pods
#ENTRYPOINT ["/bin/bash", "-c", "terraform plan -var-file=secret.tfvars"]