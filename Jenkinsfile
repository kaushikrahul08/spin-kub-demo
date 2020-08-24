pipeline {
    agent any 

    stages  {
        stage('checkout')  {
        //checkout scm
        steps {
            echo "Checking out"
        }
    }   
    stage ("Login to AZ") 
        {
         steps {
     withCredentials([azureServicePrincipal('AKS-SP-ID')])
            {
     bat "az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID"
     bat "az acr login -n kaushikrahul08 -u kaushikrahul08 -p V+Vw8exA7AKHbL28aJOPAOh127nGC=La"
            }
             }

        }
            }




}