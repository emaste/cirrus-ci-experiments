#!/bin/sh

echo HOME: $HOME
echo USER: $USER

umask 077

mkdir -p $HOME/.oci
echo "$OCI_PEM_KEY" > $HOME/.oci/oci.pem

cat > $HOME/.oci/config <<EOF
[DEFAULT]
user=$OCI_USER
fingerprint=$OCI_FINGERPRINT
tenancy=$OCI_TENANCY
region=$OCI_REGION
key_file=$HOME/.oci/oci.pem
EOF
