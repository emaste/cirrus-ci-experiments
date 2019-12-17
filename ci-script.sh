#!/bin/sh

if [ "$CIRRUS_CI" = true ]; then
	OS=$CIRRUS_OS
	ccv=$(cc --version)
	case $ccv in
	*clang*)
		COMPILER=clang
		;;
	*gcc*)
		COMPILER=gcc
		;;
	esac
	CPU_ARCH=$(uname -m)
else
	OS=${TRAVIS_OS_NAME}
	COMPILER=${TRAVIS_COMPILER}
	CPU_ARCH=${TRAVIS_CPU_ARCH}
fi

cat <<EOF
OS:       $OS
COMPILER: $COMPILER
CPU_ARCH: $CPU_ARCH
EOF
