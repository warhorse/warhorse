FROM ubuntu:22.04

ARG VERSION=develop
ARG BUILDTIME

# Install Ansible & Terraform
RUN apt-get update && apt-get install software-properties-common curl gnupg -y && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add && \
    apt-add-repository --yes "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" &&\
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get update && apt-get install ansible-core terraform git -y

# Install Galaxy Roles and collections
RUN ansible-galaxy collection install community.general ansible.posix community.crypto

# Install Warhorse
RUN git clone https://github.com/warhorse/warhorse --depth 1 --branch ${VERSION} /warhorse
WORKDIR /warhorse
RUN ansible-galaxy install -r requirements.yml -p roles/

EXPOSE 7474

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/usr/local/bin/autobrr", "--config", "/config"]
#CMD ["--config", "/config"]