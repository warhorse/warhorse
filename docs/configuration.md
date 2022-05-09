# Configuration

## General
#### op_number: - Operation Number
This is a unique number used to identify the enagagment.
#### user_tag: - User Identification
name to identify the user that deployed the engagment
#### ttl: - Time to Live
Time to Live for the engagment year month day 2022-01-01
#### ntp_timezone
Time zone to use for all systems part of this engagment

#### Example
```
  general:
    op_number: "123456"
    user_tag: 'operator'
    ttl: '2022-12-30' #Kill Date
    ntp_timezone: 'America/New_York' # Time Zone Link
```
## DNS
#### provider: Cloud provider to use
The cloud provider you want to use for DNS.
#### op_tld: The operation top level domain 
The top level domain name for DNS
#### op_domain_name: The operation sub domain
The operation subdomain you want to use for DNS
#### Example
```
  dns:
    provider: "digitalocean"
    op_tld: 'operation.com'
    op_domain_name: '123456.operation.com'
```
## VM
#### - name: - Virtual Machine Name *REQUIRED*
This is the name you would like to use for the Virtual Machine
#### provider: - Cloud provider to use *REQUIRED*
The cloud provider you want to use for Virtual Machine.
#### resource_name: - *optional*
The name you would like to use for the VM resource
#### hostname: - *optional*
The hostname you would like to use for the VM
#### dns_hostname: - *optional*
The DNS hostname you would like to use for the VM
#### size: - *optional*
The size of the instance for the VM. This will chnage depending on the cloud you use.
#### region: - *optional*
The region you would like to use for the VM. This will change depending on the cloud you use.
#### img: - *optional*
The cloud provider operating system to use. Currently Warhorse only supports Ubuntu 20.04. This will change in the future. This will change depending on the cloud you use. 

#### http_proxy: - *optional*
The HTTP proxy you would like to use with your modules. Currently only traefik and nginx are supported
#### Example
```
  vm:
    - name: "teamserver"
        provider: "digitalocean"
        resource_name: "operator-0000-01-teamserver"
        hostname: "123456-teamserver" optional
        dns_hostname: "teamserver" optional
        size: "s-2vcpu-4gb" optional
        region: "nyc1" optional
        img: "ubuntu-20-04-x64" optional
        http_proxy: "traefik" # nginx,caddy
```

## Terraform
#### state_bucket_enabled: <mark>REQUIRED</mark>
This will enable the terraform state bucket in a S3 bucket.
#### state_bucket_name: <mark>REQUIRED</mark>
The name of the S3 bucket
#### state_bucket_key: <mark>REQUIRED</mark>

This is the path to the sate file in the S3 bucket.
#### state_bucket_region: <mark>REQUIRED</mark>
This is the region used for the S3 bucket.

#### state_bucket_endpoint: <mark>REQUIRED</mark>
This is the URL used to access this S3 bucket.
#### Example
```
  terraform:
    state_bucket_enabled: true
    state_bucket_name: "tfstate"
    state_bucket_key: "123456/terraform.tfstate"
    state_bucket_region: "us-east-1"
    state_bucket_endpoint: "https://nyc3.digitaloceanspaces.com"
    bucket_access_key: "{{lookup('community.general.lastpass', 'Business/Digitalocean', field='access_key' )}}"
    bucket_secret_key: "{{lookup('community.general.lastpass', 'Business/Digitalocean', field='secret_key' )}}"
    digitalocean_token: "{{lookup('community.general.lastpass', 'Business/Digitalocean', field='token' )}}"
```

```
    cloud_enabled: true
    cloud_organization: 'warhorse'
    cloud_workspace: 'test'
```
## Users
#### - username: <mark>REQUIRED</mark>
This is the name you would like to use for a user account
#### name: <mark>REQUIRED</mark>
This is the username that will be used on your VM's
#### authorized_keys: <mark>REQUIRED</mark>
This is the public SSH key to use for the user. You can put a file path of a github url.
#### shell: <mark>REQUIRED</mark>
This is the shell to use for the user. Default shell is ZSH
#### Example
```
users:
    - username: operator
        name: operator
        authorized_keys:
        - "{{ lookup('file', '/home/operator/.ssh/id_rsa.pub') }}"
        shell: '/usr/bin/zsh'
```