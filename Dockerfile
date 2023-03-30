FROM google/cloud-sdk:424.0.0-slim

COPY gcs-sync.sh .

ENTRYPOINT [ "bash", "gcs-sync.sh" ]
