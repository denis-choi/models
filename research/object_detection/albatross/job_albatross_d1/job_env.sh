#! /bin/bash

. ./set_env.sh

export JOB_NAME=albatross_d1_v1_19
export OUTPUT_PATH=gs://$BUCKET_NAME/$JOB_NAME

echo "JOB_NAME=$JOB_NAME"
echo "OUTPUT_PATH=$OUTPUT_PATH"

