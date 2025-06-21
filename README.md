# Azure AI Foundry - Sora Video Generation model

This template deploys an Azure AI Foundry Hub & Project, with the OpenAI Sora Video Generation model.  

This scenario is part of the broader Azure Demo Catalog, available at [Trainer-Demo-Deploy](https://aka.ms/trainer-demo-deploy). 

## ⬇️ Installation
- [Azure Developer CLI - AZD](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/install-azd)
    - When installing AZD, the above the following tools will be installed on your machine as well, if not already installed:
        - [GitHub CLI](https://cli.github.com)
        - [Bicep CLI](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install)
    - You need Owner or Contributor access permissions to an Azure Subscription to  deploy the scenario.

## 🚀 Cloning the scenario in 4 steps:

1. Create a new folder on your machine.
```
mkdir tdd-azd-foundrysora
```
2. Next, navigate to the new folder.
```
cd tdd-azd-starter
```
3. Next, run `azd init` to initialize the deployment.
```
azd init -t petender/azd-foundrysora
```
4. Run the scenario deployment
```
azd up
```
5. Check the demoguide for additional instructions on what the scenario allows to demo / test.




 
