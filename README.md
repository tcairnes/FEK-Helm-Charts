# FEK-Helm-Charts
These are some Helm charts for deploying a Fluentd, ElasticSearch and Kibana configuration onto a RBAC enabled Kubernetes Cluster running on CentOS7/RHEL7

# Helm Charts

These Helm charts are for the deployment of Fluentd, Kibana and Elasticsearch onto a kubernetes cluster.

The provided shell scripts `createlogging.sh` and `deletelogging.sh` had to be located with the charts inside a shared /vagrant folder due to what I was developing on.
For any cluster running on regular machines (as opposed to virtual) You just need to make sure you have Helm and Tiller installed on your cluster.

The `createlogging.sh` script uses the commands:

`````
helm install --name fluentd --namespace logging ./fluentd-chart/
helm install --name kibana --namespace logging ./kibana-chart/
sleep 420
helm install --name elastic --namespace logging ./elastic-chart/
`````

My experience found that 7 minutes was the smallest gap I could leave before deploying ElasticSearch that didn't break the Cluster.
However I am unsure as to whether `sleep` could be impacting this wait time, if you can't get the entire solution up using the script I suggest entering the first two commands of the script then leaving some amount of time without using `sleep` before deploying the ElasticSearch component.
