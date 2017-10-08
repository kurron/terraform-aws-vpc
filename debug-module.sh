#!/bin/bash

rm -rf .terraform

INIT="terraform init -backend=true \
                     -backend-config=backend.cfg \
                     -get=true \
                     -get-plugins=true \
                     -input=true \
                     -lock=true \
                     -upgrade=true \
                     -verify-plugins=true \
                     ."
echo ${INIT}
${INIT}

export TF_LOG=DEBUG
export TF_LOG_PATH=terraform-log.txt
rm -f terraform-log.txt

PLAN="terraform plan -refresh=true \
                     -input=false \
                     -lock=true \
                     -out=proposed-changes.plan \
                     -refresh=true"
echo ${PLAN}
${PLAN}

SHOW="terraform show proposed-changes.plan"
echo ${SHOW}
${SHOW}

APPLY="terraform apply -refresh=true \
                       -lock=true \
                       -auto-approve=true \
                       -input=false \
                       proposed-changes.plan"
echo ${APPLY}
#${APPLY}

DESTROY="terraform destroy -refresh=true -input=false"
echo ${DESTROY}
#${DESTROY}
