#!/bin/bash

# Path where certs will be saved
C_PATH="./"

#obtain openssl path

# Only generate if certificate doesn't already exist
if [ ! -f "${C_PATH}/cert.pem" ] || [ ! -f "${C_PATH}/key.pem" ]; then
	echo "Generating SSL certificate..."
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-keyout ${C_PATH}key.pem \
		-out ${C_PATH}certificate.pem \
		-subj "/C=XX/ST=State/L=City/O=Organization/CN=login.42.fr"
fi

echo "finish"
