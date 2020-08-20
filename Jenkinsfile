#!/usr/bin/env groovy
node() {
    stage('checkout'){
        checkout scm
    }
    
    stage('azlogin'){
     withCredentials([azureServicePrincipal('AKS-SP-ID')]) {
   bat "az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID"
    bat "az acr login -n kaushikrahul08 -p V+Vw8exA7AKHbL28aJOPAOh127nGC=La"
                    }
    }
    
     stage('docker build&push'){
        bat "docker build -t sampleapp:v1 ."
        bat "docker tag sampleapp:v1 kaushikrahul08.azurecr.io/sampleapp:v1"
        bat "docker push kaushikrahul08.azurecr.io/sampleapp:v1"
         
    }
    
    
}



