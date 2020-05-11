#!/bin/sh

if [ -f ~/.aws/credentials ]; then
	echo "credentials exist"
else
	echo "creating credentials $AWS_CREDENTIALS"
	mkdir -p ~/.aws/
	echo "$AWS_CREDENTIALS" > ~/.aws/credentials
fi

pwd
ls -la

file="/tmp/aws-$(date +%s)"
cat > $file <<EOF
Hello from ephemeral machine

$(hostname)
$(ifconfig)
$(date)
EOF


aws s3 cp $file s3://fluffybunnies/
