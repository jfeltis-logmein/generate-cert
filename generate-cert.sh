#!/bin/bash

echo "Generating private key"
openssl genrsa -des3 -passout pass:x -out server.pass.key 4096

echo "Generating Certificate Signing Request (CSR)"
openssl rsa -passin pass:x -in server.pass.key -out server.key
rm server.pass.key
openssl req -new -key server.key -out server.csr -subj "/C=[COUNTRY]/ST=[STATE]/L=[LOCALE]/O=[ORGANIZATION]/CN=[YOUR NAME]"

echo "Generating Self-Signed Certificate"
openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
