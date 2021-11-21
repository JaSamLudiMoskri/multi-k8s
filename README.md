# Transfering multi-container application to Google Cloud Kuberneetes Engine

For this project, I've gone through development to production workflow of setuping Kubernetes cluster.

I feed the same Fibonacchi calculator application into cluster, so i can scale only specific part of it, one that is proccessing most requests.

Again I used TravisCi, Git for my version control and Google Kubernetes Engine for deploying cluster.

# Application structure

![image1](https://raw.githubusercontent.com/JaSamLudiMoskri/multi-k8s/main/Screenshot%202021-11-21%20195532.png)

# Setup for GKE

