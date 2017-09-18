#!/bin/bash

helm delete fluentd kibana elastic --purge
kubectl delete ns logging