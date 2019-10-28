#!/bin/sh

set -e

echo "${KUBECONFIG_DATA}" | base64 --decode > $KUBECONFIG

if [ -s $1 ]
then
    kubectl apply -f --validate=false $1
fi

rm -f $KUBECONFIG
