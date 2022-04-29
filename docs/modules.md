# Modules

## Supported Modules

| Logo | Service | Role |
| ------ | ----- | ------ |
|  <img src='https://github.com/warhorse/ansible-role-cobaltstrike-docker/blob/master/images/cs_logo.png?raw=true' width='40'>                                                                                                                         | Cobaltstrike  | [cobaltstrike_docker](https://github.com/warhorse/ansible-role-cobaltstrike-docker)|
|  <img src='https://github.com/warhorse/ansible-role-traefik-docker/blob/master/images/traefik_logo.png?raw=true' width='40'>                                                                                                                         | Traefik  | [traefik_docker](https://github.com/warhorse/ansible-role-traefik-docker)|
|  <img src='https://github.com/warhorse/ansible-role-neo4j-docker/blob/master/images/neo4j_logo.png?raw=true' width='40'>                                                                                                                         | Neo4j  | [neo4j_docker](https://github.com/warhorse/ansible-role-nginx-docker)|
|  <img src='https://github.com/warhorse/ansible-role-nginx-docker/blob/master/images/nginx_logo.png?raw=true' width='40'>                                                                                                                         | Nginx  | [nginx_docker](https://github.com/warhorse/ansible-role-nginx-docker)|
|  <img src='https://github.com/warhorse/ansible-role-evilginx2-docker/blob/master/images/evilginx2_logo.png?raw=true' width='40'>                                                                                                                         | Evilginx2  | [evilginx2_docker](https://github.com/warhorse/ansible-role-evilginx2-docker)|
|  <img src='https://github.com/warhorse/ansible-role-nighthawk-docker/blob/master/images/nighthawk_logo.png?raw=true' width='40'>                                                                                                                         | Nighthawk  | [nighthawk_docker](https://github.com/warhorse/ansible-role-nighthawk-docker)|
|  <img src='https://cdn-1.webcatalog.io/catalog/tailscale/tailscale-icon.png' width='40'>                                                                                                                         | Tailscale  | [tailscale](https://github.com/artis3n/ansible-role-tailscale)
|  <img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqaWTrw1ttvAZKoTi6guz8mP4WO_h-5EoXAzBzWzVX2g&s' width='40'>                                                                                                                         | Mythic  | [mythic](https://github.com/t94j0/ansible-role-mythic)|
|  <img src='https://github.com/warhorse/ansible-role-gophish-docker/blob/master/images/gophish_logo.png?raw=true' width='40'>                                                                                                                         | Gophish  | [gophish](https://github.com/t94j0/ansible-role-gophish-docker)|

## HTTP Proxy

### Traefik

```
traefik:
    acme_email: noemail@operation.com # Lets Encypt Email address
    dashboard: true
    # dir: "/opt/docker/traefik" optional
```

### Nginx

## Command & Control

### Cobaltstrike

```
cobaltstrike:
    enabled: true
    # dir: "/opt/docker/cobaltstrike" optional
    dns_over_https: true # Adds DNS records
    auth_header_name: "cdnauth" # Make sure to keep capilized
    auth_header_value: "{{ '123456' | b64encode }}"
    socks_ports: 
    - 9201
    - 9202
    - 9203
    profile: malleable.profile # files/malleable.profile.j2
    redirector:
    - name: "iis"
        provider: "azure"
        type: "iis" 
        hostname: "company"
    cdn:
    - name: "azure1"
        provider: "azure"
        hostname: "company"
        redirect_url: "https://azure.microsoft.com"
    - name: "aws"
        provider: "aws"
        redirect_url: "https://aws.com"
```

### Nighthawk

```
nighthawk:
    enabled: true
    auth_header_name: "cdnauth" # Make sure to keep capilized
    auth_header_value: "{{ '123456' | b64encode }}"
    username: "admin"
    password: "password"
    campaign: "test"
    zip_location: "test"
    socks_ports: 
    - 9201
    - 9202
    - 9203
    cdn:
    - name: "login"
        provider: "azure"
        hostname: "company"
```

## Phishing

## Evilginx2

```
evilginx2:
    enabled: true
    evilginx_domain: 'example.com'
    redirect_domain: 'redirect.com'
    phishlet: 'o365'
    cdn:
    - name: "login"
        provider: "azure"
        hostname: "company-login"
    - name: "www"
        provider: "azure"
        hostname: "company-www"
```

## VPN

### Tailscale

### Wireguard

## Extras

### Neo4j

```
neo4j:
    enabled: true
    username: 'neo4j'
```

### golang

## File shareing

### syncthing

### ipfs

## Backup 