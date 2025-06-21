targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name of the environment that can be used as part of naming resource convention')
param environmentName string

@minLength(1)
@description('Primary location for all resources')
param location string


@description('Unique identifier for the resource instance. This is used to create unique names for resources.')

param modelName string = 'sora'
param modelVersion string = '2025-05-02'
param capacity int = 60 // 1000 K TPM = 1 M TPM
param deploymentType string = 'Standard'

//var abbrs = loadJsonContent('./abbreviations.json')

// Tags that should be applied to all resources.
// 
// Note that 'azd-service-name' tags should be applied separately to service host resources.
// Example usage:
//   tags: union(tags, { 'azd-service-name': <service name in azure.yaml> })
var tags = {
  'azd-env-name': environmentName
}
var resourceToken = toLower(uniqueString(subscription().id, environmentName, location))

// This deploys the Resource Group
resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-${environmentName}'
  location: location
  tags: tags
}

// Add resources to be provisioned below. This can be actual resources, or if you follow the modular approach, create a module and point to the module.bicep file, like this example:
module soraproj './soraproj.bicep' = {
  name: 'resources'
  scope: rg
  params: {
    instanceId: 'sora${resourceToken}'
    modelName: modelName
    modelVersion: modelVersion
    deploymentName: modelName
    capacity: capacity
    deploymentType: deploymentType
    location: location

  }
}

// Add outputs from the deployment here, if needed.
//
// This allows the outputs to be referenced by other bicep deployments in the deployment pipeline,
// or by the local machine as a way to reference created resources in Azure for local development.
// Secrets should not be added here.
//
// Outputs are automatically saved in the local azd environment .env file.
// To see these outputs, run `azd env get-values`,  or `azd env get-values --output json` for json output.
output AZURE_LOCATION string = location
output AZURE_TENANT_ID string = tenant().tenantId
output AZURE_AI_AGENT_PROJECT_CONNECTION_STRING string = soraproj.outputs.projconnstring
output AZURE_AI_AGENT_MODEL_DEPLOYMENT_NAME string = soraproj.outputs.aiagentmodelname
