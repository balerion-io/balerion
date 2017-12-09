# Dockerfile for building Balerion Terraform bootstrap container image  
##################################################################

# Set the base image
FROM gizmo:local

# File Author / Maintainer
LABEL Lior Kamrat

# Change working directory to where all the terraform and deployment files are
WORKDIR /tmp/tfdeployment/

# Run the terraform plan to deploy K8s via Azure ARM template and the requested K8s apps
ENTRYPOINT ["/bin/bash", "-c", "terraform apply -auto-approve"]