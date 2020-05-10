#!/bin/sh

echo SECRET_VAR=$SECRET_VAR
echo -n $SECRET_VAR | wc -c

echo "env:"
env
