# Secrets

## Ansible Vault

## Lastpass
To use Lastpass you need to install the Lastpass CLI you can use the following commands to install Lastpass.

### MacOS
```
brew install lastpass-cli
```
### Ubuntu
```
sudo apt-get install lastpass-cli
```

You can refrance these credentials in the Warhorse configuration with the following example lookup.

```
"{{lookup('community.general.lastpass', 'Business/Digitalocean', field='access_key' )}}"
```