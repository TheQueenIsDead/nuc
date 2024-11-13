# Media

$ lxc storage create media dir source=/media/nuc/6e364723-d629-4a55-988a-5255b917630c

$ lxc storage volume create media media --type=filesystem

$ lxc storage volume attach media media microk8s-0 /data