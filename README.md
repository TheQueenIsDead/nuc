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

Adjust Gitlab root password wither by omnibus config or post-install commands:
https://stackoverflow.com/questions/60062065/gitlab-initial-root-password
 - Look at the metrics

Post install register the runner
 - https://docs.gitlab.com/runner/install/docker.html#register-the-runner

Gitlab runner configure to run pipeline containers in the same network:
 - https://gitlab.com/gitlab-org/gitlab-runner/-/issues/6644#note_356811900

Gitlab runner socket binding
 - https://docs.gitlab.com/ee/ci/docker/using_docker_build.html#use-docker-socket-binding

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

Information about libvirt
https://ubuntu.com/server/docs/virtualization-libvirt

Interesting exemplar showing how to install k0s with ansible
https://docs.k0sproject.io/v0.13.1/examples/ansible-playbook/

Cloudflared in Kubernetes
https://developers.cloudflare.com/cloudflare-one/tutorials/many-cfd-one-tunnel/

## Cloud Init

Do it with ansible...
https://cloudinit.readthedocs.io/en/latest/reference/modules.html#modules

## LXD

Documentation
https://documentation.ubuntu.com/lxd/en/latest/

Forwarding host ports to guest ports with LXD
https://lxdware.com/forwarding-host-ports-to-lxd-instances/

Bridge Networks
https://documentation.ubuntu.com/lxd/en/latest/reference/network_bridge/#network-bridge

Reverse Proxy:
https://www.linode.com/docs/guides/beginners-guide-to-lxd-reverse-proxy/

## MicroK8s

Cluster
https://microk8s.io/docs/clustering

MicroK8s comparison to other platforms
https://microk8s.io/compare

Ports exposed on nodes
https://microk8s.io/docs/services-and-ports

Configuring via cloud init
https://dev.to/sciabarracom/deploy-a-microk8s-cluster-with-cloud-init-45l7
https://raw.githubusercontent.com/openwhisk-blog/openwhisk.blog/master/content/post/kubernetes/microk8s-init.yaml


## Both!
https://microk8s.io/docs/install-lxd
