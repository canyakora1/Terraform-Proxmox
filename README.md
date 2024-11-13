# Terraform-Proxmox
Building a number of resources on Proxmox using Terraform

In this mini-project I will using Terraform which is a popular infrastructure as code tool that allows you to automate the provisioning and management of infrastructure resources. It uses configuration files written in the HashiCorp Configuration Language (HCL) to define the desired state of your infrastructure, and it uses various commands to apply those configurations and manage your infrastructure resources.

If you haven't used Terraform before, there are a number of resources on YouTube that can be utilized in learning Terraform, it's configuration files, State file, Modules and Providers

## Requirements
- Install Terraform to $PATH
- Proxmox Server 
- Some Linux fundamentals
- Some scripting experiences

## Install terraform (Ubuntu)
```r
curl -fsSL <https://apt.releases.hashicorp.com/gpg> | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] <https://apt.releases.hashicorp.com> $(lsb_release -cs) main"
sudo apt update
sudo apt install terraform
```
The above command was used to install Terraform on an Ubuntu 22.04. For all other Operating system, refer to the Official terraform website

## Assets to be deployed
- One Master k8s node
- One Worker k8s node

