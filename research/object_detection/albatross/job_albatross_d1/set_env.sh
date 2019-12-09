#! /bin/bash

PROJECT_ID=$(gcloud config list project --format "value(core.project)")
BUCKET_NAME=${PROJECT_ID}-mlengine
REGION=us-central1
TRAIN_DATA=gs://$BUCKET_NAME/data/train.record
EVAL_DATA=gs://$BUCKET_NAME/data/test.record

echo "PROJECT_ID=$PROJECT_ID"
echo "BUCKET_NAME=$BUCKET_NAME"
echo "REGION=$REGION"
echo "TRAIN_DATA=$TRAIN_DATA"
echo "EVAL_DATA=$EVAL_DATA"

