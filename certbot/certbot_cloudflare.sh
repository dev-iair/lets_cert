#!/bin/sh
certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials /etc/letsencrypt/cloudflare.ini \
  --dns-cloudflare-propagation-seconds 60 \
  -d domain.com \
  -d *.domain.com \
  --non-interactive \
  --agree-tos \
  --email id@email.com

# 30 days renewal
while true; do
  sleep 30d
  certbot renew --quiet
done