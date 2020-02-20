# Deploy a JupyterHub on IBM Cloud Power VPC  

Deploy JupyterHub on Ubuntu 18.04 ppc64le running in IBM Cloud Power VPC with GPUs. 

Users can sign-on to get an instance of Jupyter Notebook server to run Data Science Python code interactively.  Whats even more exciting is the setup supports GPU workloads where you can train your Artificial Intelligence model at very fast speeds, literally supercomputer fast.  The Watson Machine Learning Community Edition is installed to provide the ML/DL frameworks. 

## Prerequisites 

1. Terraform >= 0.12.20 
2. IBM Cloud Terraform Provider >= 0.22.0 
3. IBM Cloud API Key with authorization to provision in IBM Cloud VPC 

## Overview

This deployment:
1. Creates a Linux Ubuntu ppc64le VM server on IBM Cloud VPC 
2. Creates a new ssh key to login 
3. Opens Ports 80, 443 in VPC Security Group port to access the JupyterLab Workspace 
4. Opens Port 22 to access SSH console
5. Sets up GPU Driver 418.116 and starts services
6. Loads CUDA 10.1 Libraries 
7. Downloads and installs Anaconda3-2019.07-Linux-ppc64le.sh
8. Uses conda to creates a Watson Machine Learning Community Edition 1.6.2 environment.
9. Installs and starts JupyterHub. 

### Install Complete 
After install you can access the default JupyterHub web page of Ubuntu VM by IP:

    https://<vm ip address>

The token can be found in your output of Terraform:



### Validate GPUs are correctly loaded 
#### Notebook 

```python
import tensorflow as tf
tf.test.is_gpu_available(
    cuda_only=False,
    min_cuda_compute_capability=None
)
```

## Run template
To run the example, you will need to:

1. Clone this Git repository
2. [Download and configure](https://github.com/IBM-Cloud/terraform-provider-ibm) the IBM Cloud Terraform provider (minimally v0.20.0 or later)
3. Obtain your [IBM Cloud API key](https://cloud.ibm.com) (needed for step #4)
4. Update the variables.tf file to suit your needs

## Provision Environment in IBM Cloud on Power

The planning phase (validates the Terraform configuration)

```shell
terraform init
terraform plan
```

The apply phase (provisions the infrastructure)

```shell
terraform apply
```

The destroy phase (deletes the infrastructure)

```shell
terraform destroy
```
