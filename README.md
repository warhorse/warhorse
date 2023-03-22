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
-----------------

* [Overview](#overview)
* [Features](#features)
* [Documentation](#documentation)
* [Development](#development)
* [Acknowledgments](#usage)

## Overview

Warhorse consists of a fully-featured Ansible playbook to deploy infrastructure in the cloud for conducting security assessments. The Playbook combines Terraform & Ansible to deploy and configure virtual machines for a wide range of use cases. This Playbook is highly customizable and includes operational security. No experience with Ansible or Terraform is required to use this Playbook.

## Video Demo

[![WarHorse Demo](https://img.youtube.com/vi/AXXOlynBeQw/0.jpg)](https://youtu.be/AXXOlynBeQw)

## Current Features

* Pure Ansible playbook that dynamically builds Terraform HCL.
* Security from the ground up.
* Multiple cloud providers supported.
* Modular Design. (Only enable what you need)
* Docker containers for each application.
* Designed for multiple use cases.
* Single YAML configuration file.

## Supported Cloud Providers / Service

| Logo                                                                                                                                                               | Provider      | Services    |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ------------- |
|                             | Digital Ocean | Droplet,DNS |
|                                                                | Azure         | CDN         |
|  | AWS           | CDN,EC2,DNS |
|                                                                      | Linode        | COMPUTE,DNS |

## Modules

| Logo                                                                                                                                                                                                                                                                                                                     | Service      | Role                                                                                |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | ------------------------------------------------------------------------------------- |
|                                                                                                                                                                                               | Cobaltstrike | [cobaltstrike_docker](https://github.com/warhorse/ansible-role-cobaltstrike-docker) |
|                                                                                                                                                                                               | Traefik      | [traefik_docker](https://github.com/warhorse/ansible-role-traefik-docker)           |
|                                                                                                                                                                                                   | Neo4j        | [neo4j_docker](https://github.com/warhorse/ansible-role-nginx-docker)               |
|                                                                                                                                                                                                   | Nginx        | [nginx_docker](https://github.com/warhorse/ansible-role-nginx-docker)               |
|                                                                                                                                                                                           | Evilginx2    | [evilginx2_docker](https://github.com/warhorse/ansible-role-evilginx2-docker)       |
|                                                                                                                                                                                           | Nighthawk    | [nighthawk_docker](https://github.com/warhorse/ansible-role-nighthawk-docker)       |
|                                                                                                                                                                                                                                   | Tailscale    | [tailscale](https://github.com/artis3n/ansible-role-tailscale)                      |
|  | Mythic       | [mythic](https://github.com/t94j0/ansible-role-mythic)                              |
|                                                                                                                                                                                               | Gophish      | [gophish_docker](https://github.com/warhorse/ansible-role-gophish-docker)           |

## Documentation

https://war-horse.io/

## Development

Does none of this work for you? Submit an issue [HERE](https://github.com/warhorse/warhorse/issues)

Want to add a cool new feature? Shoot me that sweet pull request.

## Acknowledgements

Ansible roles from https://github.com/geerlingguy

## License

MIT

