#!/usr/bin/env bash
/root/.acme.sh/acme.sh --issue -d mydomain.me --webroot --keylength ec-256

acme.sh --install-cert -d mydomain.com --ecc \
        --key-file       /etc/v2ray/v2ray.key \
        --fullchain-file /etc/v2ray/v2ray.crt 

nginx -g deamon off
