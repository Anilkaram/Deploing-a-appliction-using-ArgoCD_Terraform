#!/bin/bash
sudo -i
apt update -y
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
wget https://github.com/kubernetes/kops/releases/download/v1.25.0/kops-linux-amd64
chmod +x kops-linux-amd64 kubectl
mv kubectl /usr/local/bin/kubectl
mv kops-linux-amd64 /usr/local/bin/kops
export KOPS_STATE_STORE=s3://mybucket.k8s.anil
kops create cluster --name mycluster.k8s.local --zones us-east-1a,us-east-1b --master-count=1 --master-size t2.medium --master-volume-size 28 --node-count=2 --node-size t2.micro --node-volume-size 25
kops update cluster --name mycluster.k8s.local --yes --admin
kops validate cluster --name mycluster.k8s.local

# Helm install 
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# docker
apt install docker.io -y