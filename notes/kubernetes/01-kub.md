
- write a python script
- create image from it
- passs the image to a pod

# K8S
## What it is
- manage apps in multiple containers
- in different environments

## What problem does it solve
- management of microservices
- no downtime, always accessible
- scalabilty
- disaster recovery

## Architecture

- *Worker Nodes*
    -  
    - Each node has `kubelet (kubernetes processes)` that allows it to talk to other nodes and run tasks
    - Needs many resources


- *Master Node / Control Plane* runs:
    -
    - other processes, importantly the api-server; 
        - responsible for receiving tasks from clients and communicating it with etcd

    - also runs controller manager (or cloud controller manager, `ccm`):
        - keeps the cluster in sync with what is desired and what the actual state is.
        - `ccm` is used for cloud integration to sync cloud metadata, attach storage and create Load Balancers.
        
    - scheduler:
        - determines what node is best for running what pod.

    - etcd : responsible for the current state of any component.
    - virtual network
    - at least 2 masters or more should be prioritized in production cluster


- Pods and Nodes
    -
    
    - Pod is the smallest unit in kubernetes' components running in a node
    - Runs multiple instances (containers) of an application but multiple pods can run in a *`Node`*
    - On the networking side, each has `( ! not containers in the pod)` its `IP Address`.
    - Ephemeral (can shut down easily).
    - Typically called deployments because of replica definitions.
    - While pod is an abstraction on top of containers (let's say similar to its management of containers), deployemnt is an abstraction of pods (meaning it manages pods)
    
  - Services and Ingress
    - 

    - Due to ephemeral nature of pods, the IP changes
    - Service ensures static IP
    - Also serves as a load balancer
    - Could be `internal` or `external`.

    ```
        - `External` service is the part accessible from a web browser.
        - `Internal` service ????
    ```

     - In order for service url to be a readable DNS, there is the concept of `ingress` which routes communication to the cluster
            
    ```
    - ingress -> service (external/internal)
    ```
        


- ConfigMaps and Secrets
    -
    - Configmap is for defining non-confidential credentials
    - Secrets components is for managing sensitive credentials
    - usually, when something needs to change in an app, a new version is built in image, pushed and pulled back but with ConfigMaps, it's not.


- Volumes
    -
    - To persist data in local or remote storage


- Pod Blueprints: Deployements and StatefulSets
    -
     - These are both abstractions of pods; however, `deployements` allow replica of applications that are not stateful
    - `statefulSet` allow replica of applications that are stateful such as database.
    - `deployment of statefulSets applications on Kubernetes is tedious; usually advised to manage them other ways`
    
    
    