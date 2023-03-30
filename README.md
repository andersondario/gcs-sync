## GCS Sync
Simple app to be deployed as a Sidecar to Sync PV resources to a GCS Bucket in Google Cloud. 

**Pre-requesites**:
1. Create a Service Account with Storage Object Admin Role.
2. Create a Key for that service account.
3. Create a Secret inside Kubernetes with that Service Account Key.
```bash
mv <CREDENTIAL_FILENAME>.json credential.json
kubectl create secret generic <SECRET_NAME> -n <NAMESPACE> --from-file=credential.json
```
4. Build and push the image
```bash
docker-credential-gcr configure-docker --registries=<YOUR_REPO>
docker build -t <YOUR_REPO>:<TAG_NAME> --platform amd64 .
docker push <YOUR_REPO>:<TAG_NAME>
```
5. Create a bucket
6. Change the helm value files. 
