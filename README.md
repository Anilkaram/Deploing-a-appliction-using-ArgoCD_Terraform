# 🚀 Deploying an Application Using ArgoCD & Terraform
This project demonstrates a GitOps-based deployment pipeline using the following stack:
#Terraform to provision infrastructure
#KOPS to create a Kubernetes cluster on AWS
#Helm to install Argo CD on the cluster
#Argo CD to deploy applications from a Git repository

1. Infrastructure as Code with Terraform: 
     EC2 instances for installing applications, 
     S3 backend for remote state storage
2. Kubernetes Cluster Setup with KOPS: 
     Uses KOPS to create a production-ready Kubernetes cluster on AWS, 
     Cluster configuration is stored in an S3 bucket managed by Terraform.
3. Argo CD Installation Using Helm : 
     Uses Helm, the Kubernetes package manager, to install Argo CD in the cluster, 
     Helm charts ensure a standardized and easily upgradable deployment.
4. Application Deployment via Argo CD (GitOps) : 
     Application manifests (YAML/Helm) are stored in a GitHub repository, 
     Argo CD watches this Git repository for changes, 
     On detection of change:- Argo CD syncs and deploys the latest state to the Kubernetes cluster.
     This GitOps model ensures:- Complete traceability
     Consistency between Git and live environment, Easy rollback and audit, Argo CD enables declarative and automated Kubernetes application deployment.


🎯 Key Concepts
GitOps: Git as the single source of truth for deployments
Terraform: Infrastructure as Code
KOPS: Easy Kubernetes cluster setup
Helm: Declarative Kubernetes package manager
Argo CD: Continuous delivery with Git as the control plane

![Screenshot (221)](https://github.com/user-attachments/assets/eed8fd16-a985-4b07-9f87-99c3dbf64c52)

![Screenshot (220)](https://github.com/user-attachments/assets/88103126-19dd-4223-ab41-290b29b36c87)



