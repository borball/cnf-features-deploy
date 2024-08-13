#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CNF_FEATURE_DEPLOY_ROOT=$SCRIPT_DIR/../../../..

# PGT
PGT_KUSTOMIZE_DIR="$CNF_FEATURE_DEPLOY_ROOT"/ztp/tools/pgt2acmpg/kustomize/ran.openshift.io/v1/policygentemplate
mkdir -p "$PGT_KUSTOMIZE_DIR"
"$SCRIPT_DIR"/build-pgt-plugin.sh "$PGT_KUSTOMIZE_DIR"

# ACMPG
ACM_KUSTOMIZE_DIR="$CNF_FEATURE_DEPLOY_ROOT"/ztp/tools/pgt2acmpg/kustomize/policy.open-cluster-management.io/v1/policygenerator
mkdir -p "$ACM_KUSTOMIZE_DIR"
"$SCRIPT_DIR"/build-acmpg-plugin.sh "$ACM_KUSTOMIZE_DIR"
