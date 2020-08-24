pipeline {
    agent any 
    environment {
            ACR_LOGINSERVER = Credentials ('ACR_LOGINSERVER')
            ACR_USER = Credentials ('ACR_USER')
            ACR_PASSWORD = Credentials ('ACR_PASSWORD')
    }

    stages  {
        stage ("Configuring multi logins") {
            steps {
     withCredentials([azureServicePrincipal('AKS-SP-ID')])
            {
     bat "az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID"
     bat "az acr login -n $ACR_LOGINSERVER -u $ACR_USER -p $ACR_PASSWORD"
            }
        }

    }
}




}