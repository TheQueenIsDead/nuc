# Home Server

# Deployment

The top level `./ansible.sh` script acts as a single point of entry to ensure everything on the 
server is configured appropriately.

It is a wrapper for calling into `ansible` and passing in extra args that may be required.
From this script the ansible playbook in the ansible directory is called, and it is responsible for 
configuring the base server, as well as ensuring the contents of the `docker/` and `terraform/` 
folders are executed.

The ansible playbook reads values from `config.json` and uses this as the source of truth for templating
the other aspects of the deployment.

# Deployment tools

Docker
Ansible (Galaxy)


```
# Install pre requisites
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

```

# TODO

## Tools
Add the installation of net tools / other Ubuntu libs to ansible


## Services
 - Gitlab & Runner
 - CloudFlare Tunnel
 - Prowlarr
 - [WatchTower?](https://containrrr.dev/watchtower/introduction/)
 - Jellyfin
 - Statping / StatpingNg
 - Uptime Kuma
 - fail2ban
 - 


## Server Config
Disable port 53 for some servers via ansible:
https://codepre.com/ubuntu-how-to-release-port-53-used-by-systemd-resolved.html

Automount the storage NAS with fsck

Configure IPV6 support for PiHole in order to allow Windows clients to easily connect 
(Clients default to IPv6 DNS lookup if enabled)

Create a single place to define variables, and interpolate where needed.

# Stuff

Editing systemd to enable docker over TCP
https://github.com/moby/moby/issues/33931#issuecomment-453840775

Disabling Ubuntu DNS stub for PiHole:
https://github.com/pi-hole/docker-pi-hole/#installing-on-ubuntu

Great demo / walkthrough for PiHole with Traefik:
https://codecaptured.com/blog/self-hosting-pi-hole-with-docker-and-traefik/

LibraSpeed test:
https://github.com/librespeed/speedtest

Potentially helpful for configuring internal domain access when moving to a publicly hosted domain:
https://medium.com/@containeroo/using-pi-hole-to-route-your-services-internally-2ff495093718


Cool guys making images:
https://www.linuxserver.io/

