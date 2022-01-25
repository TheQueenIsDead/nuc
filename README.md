# Home Server

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
Add the installation of net tools to ansible


## Server Config
Disable port 53 for some servers via ansible:
https://codepre.com/ubuntu-how-to-release-port-53-used-by-systemd-resolved.html

Automount the storage NAS with fsck

# Stuff

Editing systemd to enable docker over TCP
https://github.com/moby/moby/issues/33931#issuecomment-453840775

Disabling Ubuntu DNS stub for PiHole:
https://github.com/pi-hole/docker-pi-hole/#installing-on-ubuntu

Great demo / walkthrough for PiHole with Traefik:
https://codecaptured.com/blog/self-hosting-pi-hole-with-docker-and-traefik/

LibraSpeed test:
https://github.com/librespeed/speedtest


Cool guys making images:
https://www.linuxserver.io/

