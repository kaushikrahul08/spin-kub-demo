#!/usr/bin/env groovy
node() {
    stage('checkout'){
        checkout scm
    }
    
    stage('azlogin'){
     withCredentials([azureServicePrincipal('AKS-SP-ID')]) {
    sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
                    }
    }
}
