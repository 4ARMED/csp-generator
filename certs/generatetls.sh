#!/bin/bash

openssl req -newkey rsa:2048 -nodes -keyout sample.key \
-subj "/C=GB/ST=London/L=Kings Cross/O=My SaaS Company/CN=localhost" \
-x509 -days 365 -out sample.crt

echo "[*] Now copy this sample.key and sample.crt to server.key and server.crt"
