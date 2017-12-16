#!/bin/bash

docker pull certbot/certbot ;

sudo docker run \
    -it \
    --rm \
    -p 443:443 \
    -p 80:80 \
    --name certbot \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    certbot/certbot renew --rsa-key-size 4096

