#!/bin/bash

# echo "Using OctoSTS to get a token for ${{inputs.repo}} as ${{inputs.identity}}"
# idtoken=$(curl --fail-with-body -sSL -H "Metadata-Flavor: Google" http://metadata/computeMetadata/v1/instance/service-accounts/default/identity?audience=octo-sts.dev)
# ghtoken=$(curl --fail-with-body -sSL -H "Authorization: Bearer ${idtoken}" "https://octo-sts.dev/sts/exchange?scope=${{inputs.repo}}&identity=${{inputs.identity}}" | jq -r .token)

id
ls