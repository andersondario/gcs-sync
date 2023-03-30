#!/bin/bash

gcloud auth activate-service-account --key-file="$GOOGLE_APPLICATION_CREDENTIALS" --project "$GOOGLE_PROJECT_ID"
gcloud config set project "$GOOGLE_PROJECT_ID"

while true
do
  gsutil rsync -r "$DATA_VOL" "gs://$BUCKET_NAME/$APP_NAME/$GOOGLE_REGION"
  sleep 1m
done
