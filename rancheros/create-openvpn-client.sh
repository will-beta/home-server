#! /bin/bash

sudo system-docker run \
  --name openvpn-client \
  --detach \
  --cap-add=NET_ADMIN \
  --device=/dev/net/tun \
  --volume=/home/rancher/vpn:/vpn \
  --net=host \
  --restart=always \
  luisehk/openvpn-client
  
