metadata description = 'Creates an Azure Key Vault.'
param name string
param location string = resourceGroup().location
param tags object = {}

param principalId string = ''

resource keyVault 'Microsoft.KeyVault/vaults@2022-07-01' = {
  name: name
  location: location
  tags: tags
  properties: {
    tenantId: subscription().tenantId
    sku: { family: 'A', name: 'standard' }
    enableRbacAuthorization: true
    enableSoftDelete: true
    networkAcls: {
      bypass: 'AzureServices'
      defaultAction: 'Deny'
    }
    accessPolicies: !empty(principalId)
      ? [
          {
            objectId: principalId
            permissions: { secrets: ['get', 'list'] }
            tenantId: subscription().tenantId
          }
        ]
      : []
  }
}

resource logs 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'logs'
  scope: keyVault
  properties: {
    workspaceId: resourceId('Microsoft.OperationalInsights/workspaces', 'logAnalytics')
    logs: [
      {
        category: 'AuditEvent'
        enabled: true
      }
    ]
  }
}
output endpoint string = keyVault.properties.vaultUri
output name string = keyVault.name
output id string = keyVault.id
