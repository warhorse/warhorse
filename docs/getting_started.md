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
Run the following command to install all Ansible roles.
``` 
ansible-galaxy install -r requirements.yml -p roles/
```
### Linux

## Config File

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