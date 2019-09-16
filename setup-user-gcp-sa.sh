#!/bin/bash
kubectl create secret generic user-gcp-sa --from-file=user-gcp-sa.json=/usr/local/google/home/gongyuan/kfp-test/gongyuan-pipeline-test-270bbe3561ac.json --dry-run -o yaml | kubectl apply -f -
