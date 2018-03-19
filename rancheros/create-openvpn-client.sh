#! /bin/bash

# make sure of the existence of "/home/rancher/vpn/vpn.conf"
sudo system-docker run \
  --name openvpn-client \
  --detach \
  --cap-add=NET_ADMIN \
  --device=/dev/net/tun \
  --volume=/home/rancher/vpn:/vpn \
  --net=host \
  --restart=always \
  luisehk/openvpn-client
  
