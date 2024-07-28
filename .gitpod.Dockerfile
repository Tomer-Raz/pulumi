FROM gitpod/workspace-full:latest

# Install Pulumi
RUN curl -fsSL https://get.pulumi.com | sh

# Add Pulumi to PATH
ENV PATH="/home/gitpod/.pulumi/bin:${PATH}"

# Install Node.js (using NodeSource)
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
