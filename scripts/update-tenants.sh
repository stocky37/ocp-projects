#!/usr/bin/env bash

TENANTS_DIR=tenants
KUSTOMIZE_FILE=kustomization.yml

cd "$TENANTS_DIR" || exit
rm "$KUSTOMIZE_FILE"
kustomize init --autodetect --recursive
mv kustomization.yaml "$KUSTOMIZE_FILE"

