#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_DIR=$(realpath "$SCRIPT_DIR/../")

TENANTS_DIR="$PROJECT_DIR/tenants"
KUSTOMIZE_FILE=kustomization.yml

pushd "$TENANTS_DIR" > /dev/null || exit 1
echo "Regenerating kustomization.yml..."
rm "$KUSTOMIZE_FILE"
kustomize init --autodetect --recursive
mv kustomization.yaml "$KUSTOMIZE_FILE"
popd > /dev/null || exit 1
