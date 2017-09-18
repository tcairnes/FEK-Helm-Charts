#!/bin/bash

helm install --name fluentd --namespace tick ./fluentd-chart/
helm install --name kibana --namespace tick ./kibana-chart/
sleep 420
helm install --name elastic --namespace tick ./elastic-chart/