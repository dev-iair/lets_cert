#!/bin/bash

certbot certonly --manual --preferred-challenges dns --email email@domain.com --agree-tos --no-eff-email -d domain.com -d *.domain.com