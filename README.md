# Basic TTT Server
This Dockerfile sets up a TTT Server for GMod with content from CSS. The configuration is pulled from an S3 bucket on AWS whenever the container starts.

Current environment variables required are:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_DEFAULT_REGION`
