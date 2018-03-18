#! /bin/bash

sudo system-docker run -d \
  --name openvpn-client \
  --cap_add NET_ADMIN \
  --devices /dev/net/tun \
  --volume /home/rancher/vpn:/vpn \
  --network host \
  --restart always \
  luisehk/openvpn-client
  
