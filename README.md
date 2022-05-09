<div style="text-align: center;">

![Warhorse](/images/logo_full.png "Logo")

</div>

# Warhorse

![GitHub Stars](https://img.shields.io/github/stars/warhorse/warhorse?style=social) ![GitHub commit activity](https://img.shields.io/github/commit-activity/m/warhorse/warhorse) 
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/warhorse/warhorse) 
![GitHub Contributors](https://img.shields.io/github/contributors/warhorse/warhorse?style=plastic) 
[![CI](https://github.com/warhorse/warhorse/workflows/CI/badge.svg?event=push)](https://github.com/warhorse/warhorse/actions?query=workflow%3ACI)
![License](https://img.shields.io/github/license/warhorse/warhorse)
![Commit](https://img.shields.io/github/last-commit/warhorse/warhorse)

Table of contents 
------------------
  * [Overview](#overview)
  * [Features](#features)
  * [Documentation](#documentation)
  * [Development](#development)
  * [Acknowledgments](#usage)
  
## Overview

Warhorse consists of a fully-featured Ansible playbook to deploy infrastructure in the cloud for conducting security assessments. The Playbook combines Terraform & Ansible to deploy and configure virtual machines for a wide range of use cases. This Playbook is highly customizable and includes operational security. No experience with Ansible or Terraform is required to use this Playbook.

## Video Demo
<iframe width="560" height="315" src="https://www.youtube.com/embed/Vd9wW3A2f90" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Current Features

* Pure Ansible playbook that dynamically builds Terraform HCL.
* Security from the ground up.
* Multiple cloud providers supported.
* Modular Design. (Only enable what you need)
* Docker containers for each application.
* Designed for multiple use cases.
* Single YAML configuration file.

## Supported Cloud Providers / Service

| Logo | Provider | Services |
| ------ | ----- | ------ |
|  <img src='https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/DigitalOcean_logo.svg/1200px-DigitalOcean_logo.svg.png' width='40'> | Digital Ocean  | Droplet,DNS |
| <img src='https://download.logo.wine/logo/Microsoft_Azure/Microsoft_Azure-Logo.wine.png' width='40'> | Azure    | CDN|
| <img src='https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpngimage.net%2Fwp-content%2Fuploads%2F2020%2F02%2Faws-logo-png-4.png&f=1&nofb=1' width='40'> | AWS    | CDN,EC2,DNS|
## Modules

| Logo | Service | Role |
| ------ | ----- | ------ |
|  <img src='https://github.com/warhorse/ansible-role-cobaltstrike-docker/blob/master/images/cs_logo.png?raw=true' width='40'>                                                                                                                         | Cobaltstrike  | [cobaltstrike_docker](https://github.com/warhorse/ansible-role-cobaltstrike-docker)|
|  <img src='https://github.com/warhorse/ansible-role-traefik-docker/blob/master/images/traefik_logo.png?raw=true' width='40'>                                                                                                                         | Traefik  | [traefik_docker](https://github.com/warhorse/ansible-role-traefik-docker)|
|  <img src='https://github.com/warhorse/ansible-role-neo4j-docker/blob/master/images/neo4j_logo.png?raw=true' width='40'>                                                                                                                         | Neo4j  | [neo4j_docker](https://github.com/warhorse/ansible-role-nginx-docker)|
|  <img src='https://github.com/warhorse/ansible-role-nginx-docker/blob/master/images/nginx_logo.png?raw=true' width='40'>                                                                                                                         | Nginx  | [nginx_docker](https://github.com/warhorse/ansible-role-nginx-docker)|
|  <img src='https://github.com/warhorse/ansible-role-evilginx2-docker/blob/master/images/evilginx2_logo.png?raw=true' width='40'>                                                                                                                         | Evilginx2  | [evilginx2_docker](https://github.com/warhorse/ansible-role-evilginx2-docker)|
|  <img src='https://github.com/warhorse/ansible-role-nighthawk-docker/blob/master/images/nighthawk_logo.png?raw=true' width='40'>                                                                                                                         | Nighthawk  | [nighthawk_docker](https://github.com/warhorse/ansible-role-nighthawk-docker)|
|  <img src='https://cdn-1.webcatalog.io/catalog/tailscale/tailscale-icon.png' width='40'>                                                                                                                         | Tailscale  | [tailscale](https://github.com/artis3n/ansible-role-tailscale)|
|  <img src='https://www.gitbook.com/cdn-cgi/image/width=40,height=40,fit=contain,dpr=1,format=auto/https%3A%2F%2F716050681-files.gitbook.io%2F~%2Ffiles%2Fv0%2Fb%2Fgitbook-28427.appspot.com%2Fo%2Fspaces%252F-LkPUrFPV0ZTAaVORysL%252Favatar-1597327657680.png%3Fgeneration%3D1597327658453273%26alt%3Dmedia' width='40'>                                                                                                                         | Mythic  | [mythic](https://github.com/t94j0/ansible-role-mythic)|
|  <img src='https://github.com/warhorse/ansible-role-gophish-docker/blob/master/images/gophish_logo.png?raw=true' width='40'>                                                                                                                         | Gophish  | [gophish_docker](https://github.com/warhorse/ansible-role-gophish-docker)|
## Documentation 

https://docs.war-horse.io/
## Development

Does none of this work for you? Submit an issue [HERE](https://github.com/warhorse/warhorse/issues)

Want to add a cool new feature? Shoot me that sweet pull request.

## Acknowledgements

Ansible roles from https://github.com/geerlingguy

## License

MIT