# ![Lakeside Mutual Logo](./resources/logo-32x32.png) Kubernetes

## Azure Kubernetes Engine (AKS)

This is an experimental deployment for Cloud Solutions FS24 that has been tested on AKS. 
The following steps assume that you have created a AKS Cluster and have all the command line tools set up.

### Building

You need to change all occurrences of `mirioeggmann/` to some other registry or repository on DockerHub that you control to
be able to build and push the images yourself.

* Build the images by running `docker-compose -f docker-build.yml build` (this can take 15-20 minutes on the first run). 
* Push all local images to Docker Hub `docker images | grep mirioeggmann/lakesidemutual- | cut -f1 -d' ' | xargs -L 1 docker push`

### Create AKS cluster and configure kubectl

* Login to the Azure CLI
* Create an AKS cluster: `./azure-aks-create-cldsol.sh`
* Configure `kubectl` to work with the new AKS cluster: `./azure-aks-configure-kubectl-cldsol.sh`

### Deploying

You need to set an A-record `*.cldsol.YOURDOMAIN` (for example on Cloudflare) that shows to the IP of the loadbalancer, 
which you can find with `kubectl get svc -n app-routing-system` and then you see a column `EXTERNAL-IP`. 
Then you need to rename all ingress resources to the domain you configured.

* Deploy LakesideMutual to AKS: `./azure-aks-start-cldsol.sh`
* To stop and destroy the resources you can run: `./azure-aks-stop-cldsol.sh`

### Database

```bash
# on azure portal: set require_secure_transport to off and open firewall to all ip addresses

mysql -h mysql-server481b72.mysql.database.azure.com -u myadmin -p

create database customerselfservice;
create database policymanagement;
create database customercore;
create database customermanagement;

```
