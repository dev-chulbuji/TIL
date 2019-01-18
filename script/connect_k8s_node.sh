#!/usr/bin/env bash
check_kube_cluster() {
case "$1" in
  "kube.prod.cluster")
    echo "prod"
  ;;
  "kube.staging.cluster")
    echo "staging"
  ;;
  "kube.dev.cluster")
    echo "dev"
  ;;
  *)
    echo "not support cluster"
  ;;
esac
}

SERVICE=$1
CLUSTER_NAME=$(kubectl config current-context)
CURRENT_ENV=$(check_kube_cluster $CLUSTER_NAME)
service_array=$(kubectl get po -o wide | grep $SERVICE | awk '{print $1}')
(
  cd ~/.ssh
  select s in ${service_array[@]}
  do
      node_name=$(kubectl get po -o wide | grep $s | awk '{print $7}')
      external_ip=$(kubectl describe no $node_name | grep ExternalIP | awk '{print $2}')
      ssh -i ~/.ssh/kube.$CURRENT_ENV admin@$external_ip
  break
  done
)
exit 0