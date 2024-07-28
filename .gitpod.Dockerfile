FROM gitpod/workspace-full:latest

# Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
RUN sudo apt-add-repository "deb https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN sudo apt-get update && sudo apt-get install -y terraform

# Install Pulumi
RUN curl -fsSL https://get.pulumi.com | sh

# Add Pulumi to PATH
ENV PATH="/home/gitpod/.pulumi/bin:${PATH}"
