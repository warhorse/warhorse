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

### Example
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
#### op_tdl: The operation top level domain 
The top level domain name for DNS
#### op_domain_name: The operation sub domain
The operation subdomain you want to use for DNS
### Example
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
        
        resource_name: "operator-0000-01-teamserver"
        hostname: "123456-teamserver" optional
        dns_hostname: "teamserver" optional
        size: "s-2vcpu-4gb" optional
        region: "nyc1" optional
        img: "ubuntu-20-04-x64" optional
        http_proxy: "traefik" # nginx,caddy
#### resource_name: - *optional*
Time
#### hostname: - *optional*
Time
#### dns_hostname: - *optional*
Time
#### size: - *optional*
Time
#### region: - *optional*
Time
#### img: - *optional*
Time

#### http_proxy: - *optional*
Time

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
        firewall: 
            enabled: true # You should keep this true
        backup: 
            enabled: false
            archive_zip: false
```

## Terraform

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

```
users:
    - username: operator
        name: operator
        authorized_keys:
        - "{{ lookup('file', '/home/operator/.ssh/id_rsa.pub') }}"
        shell: '/usr/bin/zsh'
```