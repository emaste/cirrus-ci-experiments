#!/bin/sh

echo SECRET_VAR=$SECRET_VAR
echo -n $SECRET_VAR | wc -c
echo "known plaintext: super-secret-value2"

echo "env:"
env
