resource_group_name = "terraform"
location            = "East US"
cluster_name        = "my_aks"
dns_prefix          = "myakscluster" #a rondom name  it will craete a For example, if you set the DNS prefix to "myakscluster", and the AKS cluster is deployed in the East US region, the FQDN for the Kubernetes API server would be myakscluster.eastus.azure.com
node_count          = 3
vm_size             = "Standard_DS2_v2"
tags = {
  environment = "Production"
  owner       = "Narsimha"
}
