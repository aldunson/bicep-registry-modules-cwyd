metadata description = 'Creates an Azure App Service plan.'
param name string
param location string = resourceGroup().location
param tags object = {}

param kind string = ''
param reserved bool = true
param sku object = {
  name: 'P1v3'
  tier: 'PremiumV3'
  size: 'P1v3'
  family: 'Pv3'
  capacity: 3
}

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: name
  location: location
  tags: tags
  sku: sku
  kind: kind
  properties: {
    reserved: reserved
    zoneRedundant: true
  }
}

output id string = appServicePlan.id
output name string = appServicePlan.name
