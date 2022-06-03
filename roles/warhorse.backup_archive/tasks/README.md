Backup
=========

[![warhorse.cobaltstrike_docker](https://img.shields.io/ansible/role/55892)](https://galaxy.ansible.com/warhorse/cobaltstrike_docker)


Install Cobalt Strike (Docker)

Role Variables
--------------

A list of all the variables can be found in ./defaults/main.yml.

`cs_dir` - Cobalt Strike container directory 

`cs_ports` - Cobalt Strike container ports

`cs_hostname` - Cobalt Strike container hostname

`cs_container_name` - Cobalt Strike container name 

`cs_key` - Cobalt Strike teamserver license key (REQUIRED)

`cs_password` - Cobalt Strike teamserver password (REQUIRED)

`cs_exp_date` - Cobalt Strike becaon expiration date (REQUIRED)

`cs_profile_location` - Location of your Cobalt Strike profile file

`cs_docker_network` Cobalt Strike container docker network


Dependencies
------------

```shell
ansible-galaxy install geerlingguy.docker geerlingguy.pip
```

Install
------------

```shell
ansible-galaxy install warhorse.cobaltstrike_docker
```

Example Playbook
----------------

```yaml
- hosts: servers
  roles:
      - { role: warhorse.cobaltstrike_docker }
```

Example Vars
----------------

```yaml
cs_hostname: "cobaltstrike"
cs_container_name: "cobaltstrike"
cs_key: '000-000-000-000-000'
cs_password: 'Password'
cs_exp_date: '2020-12-20'
cs_profile_location: 'clean.profile.j2'
cs_docker_network: "cobaltstrike"
cs_dir: '/opt/docker/cobaltstrike'
cs_ports:
  - "50050:50050"
  - "80:80"
  - "443:443"
```

License
-------

BSD

Author Information
------------------

Ralph May
