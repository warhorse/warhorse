# Getting Started

## Local Deployment

### Windows


### macOS
#### Install Ansible
Run the following command to install Ansible with brew
``` 
brew install ansible
```
#### Install Terraform
Run the following command to install Terraform with brew
``` 
brew install terraform
```
#### Install Role dependencies
Run the following command from the root of the warhorse repository folder to install all Ansible roles.
``` 
cd warhorse
ansible-galaxy install -r requirements.yml -p roles/
export ANSIBLE_VAULT_PASSWORD_FILE=./vault-env
```
### Linux
#### Install Ansible
Run the following commands to install Ansible with APT
``` 
sudo apt-get update
sudo apt-get install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible-core -y
```
#### Install Terraform
Run the following commands to install Terraform with APT
``` 
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add 
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
```
#### Install Role dependencies
Run the following command from the root of the warhorse repository folder to install all Ansible roles.
``` 
cd warhorse
ansible-galaxy install -r requirements.yml -p roles/
export ANSIBLE_VAULT_PASSWORD_FILE=./vault-env
```
## Config File

Simple configuration example. Save this file to `config.yml`

```
warhorse:
  general:
    op_number: "123456"
    user_tag: 'operator'
    ttl: '2022-12-30' #Kill Date
    ntp_timezone: 'America/New_York' # Time Zone Link
  dns:
    provider: "digitalocean"
    op_tld: 'operation.com'
    op_domain_name: '123456.operation.com'
  vm:
    - name: "teamserver"
      provider: "digitalocean"
      http_proxy: "nginx" # nginx,caddy
      nginx:
        acme_email: noemail@operation.com
      firewall: 
        enabled: true # You should keep this true
      backup: 
        enabled: false
        archive_zip: false
  users:
    - username: operator1
      name: operator
      authorized_keys:
      - "{{ lookup('file', '/home/operator/.ssh/id_rsa.pub') }}"
      shell: '/usr/bin/zsh'
```

## Generate
Run the following command to generate configuration files.
``` 
ansible-playbook generate.yml
```

## Deploy
Run the following command to deploy your environment.
``` 
ansible-playbook deploy.yml
```