#!/bin/sh

set -e

echo "${KUBECONFIG_DATA}" | base64 --decode > $KUBECONFIG

if [ -s $1 ]
then
    kubectl apply -f $1 --validate=false
fi

rm -f $KUBECONFIG
