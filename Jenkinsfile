#!/usr/bin/env groovy
node() {
    stage('checkout'){
        checkout scm
    }
    
    stage('azlogin') {
     withCredentials([azureServicePrincipal('AKS-SP-ID')]) {
   bat "az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID"
   bat "az acr login -n aksregus -u aksregus -p CEazBdcta05CfVV1G+GVc2lO3v5RsbaR"
                    }
    }
    
     stage('docker build&push'){
      bat "docker build -t sampleapp:v3 ."
      bat "docker tag sampleapp:v3 aksregus.azurecr.io/sampleapp:v3"
      bat "docker push aksregus.azurecr.io/sampleapp:v3"
         
    } 
    
    stage ('login to aks context login ') {
        //bat "cd C:/Users/rahulsharma "
        bat "az aks get-credentials --resource-group RG-AKS --name azkubeclr"
        bat "kubectl config get-contexts" 
        bat "kubectl config use-context azkubeclr"
        
    }
    
    
      stage ('deployment of pods ') {
        bat "kubectl apply -f deployment.yml"
        bat "kubectl apply -f balancer-service.yaml"
    }

}