#/bin/bash

DATE=$(date +%H:%M:%S)
SPOT_PRICE=$1
INST_COUNT=$2
TYPE=$3
JSON_FILE=$4
AWS_SECRET=$5

export AWS_ACCESS_KEY_ID=AKIA3WHUXPLQL4E62FP4 && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
echo "Request your spot Instance from aws on $DATE" && \
aws ec2 request-spot-instances --spot-price $SPOT_PRICE --instance-count $INST_COUNT --type $TYPE --launch-specification $JSON_FILE

