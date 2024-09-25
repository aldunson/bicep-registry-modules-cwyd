targetScope = 'subscription'
metadata name = 'Chat with Your Data'
metadata description = '''This solution accelerator uses an Azure OpenAI GPT model and an Azure AI Search index generated from your data,
which is integrated into a web application to provide a natural language interface, including speech-to-text functionality, for search queries.'''
metadata owner = 'Azure/module-maintainers'

@minLength(1)
@maxLength(20)
@description('Required. Name of the the environment which is used to generate a short unique hash used in all resources.')
param environmentName string

@description('Optional. Resource Token.')
param resourceToken string = toLower(uniqueString(subscription().id, environmentName, location))

@description('Required. Location for all resources.')
param location string

@description('Optional. Name of App Service plan.')
param hostingPlanName string = 'hosting-plan-${resourceToken}'

@description('Optional. The pricing tier for the App Service plan.')
@allowed([
  'F1'
  'D1'
  'B1'
  'B2'
  'B3'
  'S1'
  'S2'
  'S3'
  'P1'
  'P2'
  'P3'
  'P4'
])
param hostingPlanSku string = 'B3'

@description('Optional. The sku tier for the App Service plan.')
@allowed([
  'Free'
  'Shared'
  'Basic'
  'Standard'
  'Premium'
  'PremiumV2'
  'PremiumV3'
])
param skuTier string = 'Basic'

@description('Optional. Name of Web App.')
param websiteName string = 'web-${resourceToken}'

@description('Optional. Name of Admin Web App.')
param adminWebsiteName string = '${websiteName}-admin'

@description('Optional. Name of Application Insights.')
param applicationInsightsName string = 'appinsights-${resourceToken}'

@description('Optional. Name of the Workbook.')
param workbookDisplayName string = 'workbook-${resourceToken}'

@description('Optional. Use semantic search.')
param azureSearchUseSemanticSearch bool = false

@description('Optional. Semantic search config.')
param azureSearchSemanticSearchConfig string = 'default'

@description('Optional. Is the index prechunked.')
param azureSearchIndexIsPrechunked string = 'false'

@description('Optional. Top K results.')
param azureSearchTopK string = '5'

@description('Optional. Enable in domain.')
param azureSearchEnableInDomain string = 'false'

@description('Optional. Content columns.')
param azureSearchContentColumns string = 'content'

@description('Optional. Vector columns.')
param azureSearchVectorColumns string = 'content_vector'

@description('Optional. Filename column.')
param azureSearchFilenameColumn string = 'filename'

@description('Optional. Search filter.')
param azureSearchFilter string = ''

@description('Optional. Title column.')
param azureSearchTitleColumn string = 'title'

@description('Optional. Url column.')
param azureSearchUrlColumn string = 'url'

@description('Optional. Use Azure Search Integrated Vectorization.')
param azureSearchUseIntegratedVectorization bool = false

@description('Optional. Name of Azure OpenAI Resource.')
param azureOpenAIResourceName string = 'openai-${resourceToken}'

@description('Optional. Name of Azure OpenAI Resource SKU.')
param azureOpenAISkuName string = 'S0'

@description('Optional. Azure OpenAI Model Deployment Name.')
param azureOpenAIModel string = 'gpt-35-turbo-16k'

@description('Optional. Azure OpenAI Model Name.')
param azureOpenAIModelName string = 'gpt-35-turbo-16k'

@description('Optional. Azure OpenAI Model Version.')
param azureOpenAIModelVersion string = '0613'

@description('Optional. Azure OpenAI Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota .')
param azureOpenAIModelCapacity int = 30

@description('Optional. Enables the use of a vision LLM and Computer Vision for embedding images.')
param useAdvancedImageProcessing bool = false

@description('Optional. The maximum number of images to pass to the vision model in a single request.')
param advancedImageProcessingMaxImages int = 1

@description('Optional. Azure OpenAI Vision Model Deployment Name.')
param azureOpenAIVisionModel string = 'gpt-4'

@description('Optional. Azure OpenAI Vision Model Name.')
param azureOpenAIVisionModelName string = 'gpt-4'

@description('Optional. Azure OpenAI Vision Model Version.')
param azureOpenAIVisionModelVersion string = 'vision-preview'

@description('Optional. Azure OpenAI Vision Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota .')
param azureOpenAIVisionModelCapacity int = 10

@description('Optional. Orchestration strategy: openai_function or semantic_kernel or langchain str. If you use a old version of turbo (0301), please select langchain.')
@allowed([
  'openai_function'
  'semantic_kernel'
  'langchain'
  'prompt_flow'
])
param orchestrationStrategy string = 'openai_function'

@description('Optional. Chat conversation type: custom or byod.')
@allowed([
  'custom'
  'byod'
])
param conversationFlow string = 'custom'

@description('Optional. Azure OpenAI Temperature.')
param azureOpenAITemperature string = '0'

@description('Optional. Azure OpenAI Top P.')
param azureOpenAITopP string = '1'

@description('Optional. Azure OpenAI Max Tokens.')
param azureOpenAIMaxTokens string = '1000'

@description('Optional. Azure OpenAI Stop Sequence.')
param azureOpenAIStopSequence string = ''

@description('Optional. Azure OpenAI System Message.')
param azureOpenAISystemMessage string = 'You are an AI assistant that helps people find information.'

@description('Optional. Azure OpenAI Api Version.')
param azureOpenAIApiVersion string = '2024-02-01'

@description('Optional. Whether or not to stream responses from Azure OpenAI.')
param azureOpenAIStream string = 'true'

@description('Optional. Azure OpenAI Embedding Model Deployment Name.')
param azureOpenAIEmbeddingModel string = 'text-embedding-ada-002'

@description('Optional. Azure OpenAI Embedding Model Name.')
param azureOpenAIEmbeddingModelName string = 'text-embedding-ada-002'

@description('Optional. Azure OpenAI Embedding Model Version.')
param azureOpenAIEmbeddingModelVersion string = '2'

@description('Optional. Azure OpenAI Embedding Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota .')
param azureOpenAIEmbeddingModelCapacity int = 30

@description('Optional. Name of Computer Vision Resource (if useAdvancedImageProcessing=true).')
param computerVisionName string = 'computer-vision-${resourceToken}'

@description('Optional. Name of Computer Vision Resource SKU (if useAdvancedImageProcessing=true).')
@allowed([
  'F0'
  'S1'
])
param computerVisionSkuName string = 'S1'

@description('Optional. Location of Computer Vision Resource (if useAdvancedImageProcessing=true).')
@allowed([
  // List taken from https://learn.microsoft.com/en-us/azure/ai-services/computer-vision/how-to/image-retrieval?tabs=python#prerequisites
  'eastus'
  'westus'
  'koreacentral'
  'francecentral'
  'northeurope'
  'westeurope'
  'southeastasia'
  ''
])
param computerVisionLocation string = ''

@description('Optional. Azure Computer Vision Vectorize Image API Version.')
param computerVisionVectorizeImageApiVersion string = '2024-02-01'

@description('Optional. Azure Computer Vision Vectorize Image Model Version.')
param computerVisionVectorizeImageModelVersion string = '2023-04-15'

@description('Optional. Azure AI Search Resource.')
param azureAISearchName string = 'search-${resourceToken}'

@description('Optional. The SKU of the search service you want to create. E.g. free or standard.')
@allowed([
  'free'
  'basic'
  'standard'
  'standard2'
  'standard3'
])
param azureSearchSku string = 'standard'

@description('Optional. Azure AI Search Index.')
param azureSearchIndex string = 'index-${resourceToken}'

@description('Optional. Azure AI Search Indexer.')
param azureSearchIndexer string = 'indexer-${resourceToken}'

@description('Optional. Azure AI Search Datasource.')
param azureSearchDatasource string = 'datasource-${resourceToken}'

@description('Optional. Azure AI Search Conversation Log Index.')
param azureSearchConversationLogIndex string = 'conversations'

@description('Optional. Name of Storage Account.')
param storageAccountName string = 'str${resourceToken}'

@description('Optional. Name of Function App for Batch document processing.')
param functionName string = 'backend-${resourceToken}'

@description('Optional. Azure Form Recognizer Name.')
param formRecognizerName string = 'formrecog-${resourceToken}'

@description('Optional. Azure Content Safety Name.')
param contentSafetyName string = 'contentsafety-${resourceToken}'

@description('Optional. Azure Speech Service Name.')
param speechServiceName string = 'speech-${resourceToken}'

@description('Optional. Log Analytics Name.')
param logAnalyticsName string = 'la-${resourceToken}'

@description('Optional. Guid.')
param newGuidString string = newGuid()

@description('Optional. Search Tag.')
param searchTag string = 'chatwithyourdata-sa'

@description('Optional. Whether to use Key Vault to store secrets (best when using keys). If using RBAC, then please set this to false.')
param useKeyVault bool = authType == 'rbac' ? false : true

@description('Optional. Id of the user or app to assign application roles.')
param principalId string = ''

@description('Optional. Whether the Azure services communicate with each other using RBAC or keys. RBAC is recommended, however some users may not have sufficient permissions to assign roles.')
@allowed([
  'rbac'
  'keys'
])
param authType string = 'keys'

@description('Optional. Hosting model for the web apps. Containers are prebuilt and can be deployed faster, but code allows for more customization.')
@allowed([
  'code'
  'container'
])
param hostingModel string = 'container'

@allowed([
  'CRITICAL'
  'ERROR'
  'WARN'
  'INFO'
  'DEBUG'
])
@description('Optional. Log level web service.')
param logLevel string = 'INFO'

@description('Optional. List of comma-separated languages to recognize from the speech input. Supported languages are listed here: https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=stt#supported-languages .')
param recognizedLanguages string = 'en-US,fr-FR,de-DE,it-IT'

@description('Optional. Azure Machine Learning Name.')
param azureMachineLearningName string = 'aml-${resourceToken}'

@description('Optional. Enable/Disable usage telemetry for module.')
param enableTelemetry bool = true

var blobContainerName = 'documents'
var queueName = 'doc-processing'
var clientKey = '${uniqueString(guid(subscription().id, deployment().name))}${newGuidString}'
var eventGridSystemTopicName = 'doc-processing'
var tags = { 'azd-env-name': environmentName }
var rgName = 'rg-${environmentName}'
var keyVaultName = 'kv-${resourceToken}'

//resources
#disable-next-line no-deployments-resources
resource avmTelemetry 'Microsoft.Resources/deployments@2023-07-01' = if (enableTelemetry) {
  name: '46d3xbcp.ptn.ai-chatwithyourdata.${replace('-..--..-', '.', '-')}.${substring(uniqueString(deployment().name, location), 0, 4)}'
  properties: {
    mode: 'Incremental'
    template: {
      '$schema': 'https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#'
      contentVersion: '1.0.0.0'
      resources: []
      outputs: {
        telemetry: {
          type: 'String'
          value: 'For more information, see https://aka.ms/avm/TelemetryInfo'
        }
      }
    }
  }
}

// Organize resources in a resource group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
  tags: tags
}

// Store secrets in a keyvault
module keyvault './core/security/keyvault.bicep' = if (useKeyVault || authType == 'rbac') {
  name: 'keyvault'
  scope: rg
  params: {
    name: keyVaultName
    location: location
    tags: tags
    principalId: principalId
  }
}

var defaultOpenAiDeployments = [
  {
    name: azureOpenAIModel
    model: {
      format: 'OpenAI'
      name: azureOpenAIModelName
      version: azureOpenAIModelVersion
    }
    sku: {
      name: 'Standard'
      capacity: azureOpenAIModelCapacity
    }
  }
  {
    name: azureOpenAIEmbeddingModel
    model: {
      format: 'OpenAI'
      name: azureOpenAIEmbeddingModelName
      version: azureOpenAIEmbeddingModelVersion
    }
    sku: {
      name: 'Standard'
      capacity: azureOpenAIEmbeddingModelCapacity
    }
  }
]

var openAiDeployments = concat(
  defaultOpenAiDeployments,
  useAdvancedImageProcessing
    ? [
        {
          name: azureOpenAIVisionModel
          model: {
            format: 'OpenAI'
            name: azureOpenAIVisionModelName
            version: azureOpenAIVisionModelVersion
          }
          sku: {
            name: 'Standard'
            capacity: azureOpenAIVisionModelCapacity
          }
        }
      ]
    : []
)

module openai 'core/ai/cognitiveservices.bicep' = {
  name: azureOpenAIResourceName
  scope: rg
  params: {
    name: azureOpenAIResourceName
    location: location
    tags: tags
    sku: {
      name: azureOpenAISkuName
    }
    managedIdentity: authType == 'rbac'
    deployments: openAiDeployments
  }
}

module computerVision 'core/ai/cognitiveservices.bicep' = if (useAdvancedImageProcessing) {
  name: 'computerVision'
  scope: rg
  params: {
    name: computerVisionName
    kind: 'ComputerVision'
    location: computerVisionLocation != '' ? computerVisionLocation : location
    tags: tags
    sku: {
      name: computerVisionSkuName
    }
  }
}

// Search Index Data Reader
module searchIndexRoleOpenai 'core/security/role.bicep' = if (authType == 'rbac') {
  scope: rg
  name: 'search-index-role-openai'
  params: {
    principalId: openai.outputs.identityPrincipalId
    roleDefinitionId: '1407120a-92aa-4202-b7e9-c0e197c71c8f'
    principalType: 'ServicePrincipal'
  }
}

// Search Service Contributor
module searchServiceRoleOpenai 'core/security/role.bicep' = if (authType == 'rbac') {
  scope: rg
  name: 'search-service-role-openai'
  params: {
    principalId: openai.outputs.identityPrincipalId
    roleDefinitionId: '7ca78c08-252a-4471-8644-bb5ff32d4ba0'
    principalType: 'ServicePrincipal'
  }
}

// Storage Blob Data Reader
module blobDataReaderRoleSearch 'core/security/role.bicep' = if (authType == 'rbac') {
  scope: rg
  name: 'blob-data-reader-role-search'
  params: {
    principalId: search.outputs.identityPrincipalId
    roleDefinitionId: '2a2b9908-6ea1-4ae2-8e65-a410df84e7d1'
    principalType: 'ServicePrincipal'
  }
}

// Cognitive Services OpenAI User
module openAiRoleSearchService 'core/security/role.bicep' = if (authType == 'rbac') {
  scope: rg
  name: 'openai-role-searchservice'
  params: {
    principalId: search.outputs.identityPrincipalId
    roleDefinitionId: '5e0bd9bd-7b93-4f28-af87-19fc36ad61bd'
    principalType: 'ServicePrincipal'
  }
}

module speechService 'core/ai/cognitiveservices.bicep' = {
  scope: rg
  name: speechServiceName
  params: {
    name: speechServiceName
    location: location
    sku: {
      name: 'S0'
    }
    kind: 'SpeechServices'
  }
}

module storekeys './app/storekeys.bicep' = if (useKeyVault) {
  name: 'storekeys'
  scope: rg
  params: {
    keyVaultName: keyVaultName
    azureOpenAIName: openai.outputs.name
    azureAISearchName: search.outputs.name
    storageAccountName: storage.outputs.name
    formRecognizerName: formrecognizer.outputs.name
    contentSafetyName: contentsafety.outputs.name
    speechServiceName: speechServiceName
    computerVisionName: useAdvancedImageProcessing ? computerVision.outputs.name : ''
    rgName: rgName
  }
}

module search './core/search/search-services.bicep' = {
  name: azureAISearchName
  scope: rg
  params: {
    name: azureAISearchName
    location: location
    tags: {
      deployment: searchTag
    }
    sku: {
      name: azureSearchSku
    }
    authOptions: {
      aadOrApiKey: {
        aadAuthFailureMode: 'http403'
      }
    }
    semanticSearch: azureSearchUseSemanticSearch ? 'free' : null
  }
}

module hostingplan './core/host/appserviceplan.bicep' = {
  name: hostingPlanName
  scope: rg
  params: {
    name: hostingPlanName
    location: location
    sku: {
      name: hostingPlanSku
      tier: skuTier
    }
    reserved: true
    tags: { CostControl: 'Ignore' }
  }
}

module web './app/web.bicep' = if (hostingModel == 'code') {
  name: websiteName
  scope: rg
  params: {
    name: websiteName
    location: location
    tags: union(tags, { 'azd-service-name': 'web' })
    runtimeName: 'python'
    runtimeVersion: '3.11'
    appServicePlanId: hostingplan.outputs.name
    applicationInsightsName: monitoring.outputs.applicationInsightsName
    healthCheckPath: '/api/health'
    azureOpenAIName: openai.outputs.name
    azureAISearchName: search.outputs.name
    storageAccountName: storage.outputs.name
    formRecognizerName: formrecognizer.outputs.name
    contentSafetyName: contentsafety.outputs.name
    speechServiceName: speechService.outputs.name
    computerVisionName: useAdvancedImageProcessing ? computerVision.outputs.name : ''
    openAIKeyName: useKeyVault ? storekeys.outputs.OPENAI_KEY_NAME : ''
    storageAccountKeyName: useKeyVault ? storekeys.outputs.STORAGE_ACCOUNT_KEY_NAME : ''
    formRecognizerKeyName: useKeyVault ? storekeys.outputs.FORM_RECOGNIZER_KEY_NAME : ''
    searchKeyName: useKeyVault ? storekeys.outputs.SEARCH_KEY_NAME : ''
    contentSafetyKeyName: useKeyVault ? storekeys.outputs.CONTENT_SAFETY_KEY_NAME : ''
    speechKeyName: useKeyVault ? storekeys.outputs.SPEECH_KEY_NAME : ''
    computerVisionKeyName: useKeyVault ? storekeys.outputs.COMPUTER_VISION_KEY_NAME : ''
    useKeyVault: useKeyVault
    keyVaultName: useKeyVault || authType == 'rbac' ? keyvault.outputs.name : ''
    authType: authType
    appSettings: {
      AZURE_BLOB_ACCOUNT_NAME: storageAccountName
      AZURE_BLOB_CONTAINER_NAME: blobContainerName
      AZURE_COMPUTER_VISION_ENDPOINT: useAdvancedImageProcessing ? computerVision.outputs.endpoint : ''
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_API_VERSION: computerVisionVectorizeImageApiVersion
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_MODEL_VERSION: computerVisionVectorizeImageModelVersion
      AZURE_CONTENT_SAFETY_ENDPOINT: contentsafety.outputs.endpoint
      AZURE_FORM_RECOGNIZER_ENDPOINT: formrecognizer.outputs.endpoint
      AZURE_OPENAI_RESOURCE: azureOpenAIResourceName
      AZURE_OPENAI_MODEL: azureOpenAIModel
      AZURE_OPENAI_MODEL_NAME: azureOpenAIModelName
      AZURE_OPENAI_MODEL_VERSION: azureOpenAIModelVersion
      AZURE_OPENAI_TEMPERATURE: azureOpenAITemperature
      AZURE_OPENAI_TOP_P: azureOpenAITopP
      AZURE_OPENAI_MAX_TOKENS: azureOpenAIMaxTokens
      AZURE_OPENAI_STOP_SEQUENCE: azureOpenAIStopSequence
      AZURE_OPENAI_SYSTEM_MESSAGE: azureOpenAISystemMessage
      AZURE_OPENAI_API_VERSION: azureOpenAIApiVersion
      AZURE_OPENAI_STREAM: azureOpenAIStream
      AZURE_OPENAI_EMBEDDING_MODEL: azureOpenAIEmbeddingModel
      AZURE_OPENAI_EMBEDDING_MODEL_NAME: azureOpenAIEmbeddingModelName
      AZURE_OPENAI_EMBEDDING_MODEL_VERSION: azureOpenAIEmbeddingModelVersion
      AZURE_SEARCH_USE_SEMANTIC_SEARCH: azureSearchUseSemanticSearch
      AZURE_SEARCH_SERVICE: 'https://${azureAISearchName}.search.windows.net'
      AZURE_SEARCH_INDEX: azureSearchIndex
      AZURE_SEARCH_CONVERSATIONS_LOG_INDEX: azureSearchConversationLogIndex
      AZURE_SEARCH_SEMANTIC_SEARCH_CONFIG: azureSearchSemanticSearchConfig
      AZURE_SEARCH_INDEX_IS_PRECHUNKED: azureSearchIndexIsPrechunked
      AZURE_SEARCH_TOP_K: azureSearchTopK
      AZURE_SEARCH_ENABLE_IN_DOMAIN: azureSearchEnableInDomain
      AZURE_SEARCH_CONTENT_COLUMNS: azureSearchContentColumns
      AZURE_SEARCH_CONTENT_VECTOR_COLUMNS: azureSearchVectorColumns
      AZURE_SEARCH_FILENAME_COLUMN: azureSearchFilenameColumn
      AZURE_SEARCH_FILTER: azureSearchFilter
      AZURE_SEARCH_TITLE_COLUMN: azureSearchTitleColumn
      AZURE_SEARCH_URL_COLUMN: azureSearchUrlColumn
      AZURE_SEARCH_USE_INTEGRATED_VECTORIZATION: azureSearchUseIntegratedVectorization
      AZURE_SPEECH_SERVICE_NAME: speechServiceName
      AZURE_SPEECH_SERVICE_REGION: location
      AZURE_SPEECH_RECOGNIZER_LANGUAGES: recognizedLanguages
      USE_ADVANCED_IMAGE_PROCESSING: useAdvancedImageProcessing
      ADVANCED_IMAGE_PROCESSING_MAX_IMAGES: advancedImageProcessingMaxImages
      ORCHESTRATION_STRATEGY: orchestrationStrategy
      CONVERSATION_FLOW: conversationFlow
      LOGLEVEL: logLevel
    }
  }
}

module web_docker './app/web.bicep' = if (hostingModel == 'container') {
  name: '${websiteName}-docker'
  scope: rg
  params: {
    name: '${websiteName}-docker'
    location: location
    tags: union(tags, { 'azd-service-name': 'web-docker' })
    dockerFullImageName: 'fruoccopublic.azurecr.io/rag-webapp'
    appServicePlanId: hostingplan.outputs.name
    applicationInsightsName: monitoring.outputs.applicationInsightsName
    healthCheckPath: '/api/health'
    azureOpenAIName: openai.outputs.name
    azureAISearchName: search.outputs.name
    storageAccountName: storage.outputs.name
    formRecognizerName: formrecognizer.outputs.name
    contentSafetyName: contentsafety.outputs.name
    speechServiceName: speechService.outputs.name
    computerVisionName: useAdvancedImageProcessing ? computerVision.outputs.name : ''
    openAIKeyName: useKeyVault ? storekeys.outputs.OPENAI_KEY_NAME : ''
    storageAccountKeyName: useKeyVault ? storekeys.outputs.STORAGE_ACCOUNT_KEY_NAME : ''
    formRecognizerKeyName: useKeyVault ? storekeys.outputs.FORM_RECOGNIZER_KEY_NAME : ''
    searchKeyName: useKeyVault ? storekeys.outputs.SEARCH_KEY_NAME : ''
    computerVisionKeyName: useKeyVault ? storekeys.outputs.COMPUTER_VISION_KEY_NAME : ''
    contentSafetyKeyName: useKeyVault ? storekeys.outputs.CONTENT_SAFETY_KEY_NAME : ''
    speechKeyName: useKeyVault ? storekeys.outputs.SPEECH_KEY_NAME : ''
    useKeyVault: useKeyVault
    keyVaultName: useKeyVault || authType == 'rbac' ? keyvault.outputs.name : ''
    authType: authType
    appSettings: {
      AZURE_BLOB_ACCOUNT_NAME: storageAccountName
      AZURE_BLOB_CONTAINER_NAME: blobContainerName
      AZURE_COMPUTER_VISION_ENDPOINT: useAdvancedImageProcessing ? computerVision.outputs.endpoint : ''
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_API_VERSION: computerVisionVectorizeImageApiVersion
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_MODEL_VERSION: computerVisionVectorizeImageModelVersion
      AZURE_CONTENT_SAFETY_ENDPOINT: contentsafety.outputs.endpoint
      AZURE_FORM_RECOGNIZER_ENDPOINT: formrecognizer.outputs.endpoint
      AZURE_OPENAI_RESOURCE: azureOpenAIResourceName
      AZURE_OPENAI_MODEL: azureOpenAIModel
      AZURE_OPENAI_MODEL_NAME: azureOpenAIModelName
      AZURE_OPENAI_MODEL_VERSION: azureOpenAIModelVersion
      AZURE_OPENAI_TEMPERATURE: azureOpenAITemperature
      AZURE_OPENAI_TOP_P: azureOpenAITopP
      AZURE_OPENAI_MAX_TOKENS: azureOpenAIMaxTokens
      AZURE_OPENAI_STOP_SEQUENCE: azureOpenAIStopSequence
      AZURE_OPENAI_SYSTEM_MESSAGE: azureOpenAISystemMessage
      AZURE_OPENAI_API_VERSION: azureOpenAIApiVersion
      AZURE_OPENAI_STREAM: azureOpenAIStream
      AZURE_OPENAI_EMBEDDING_MODEL: azureOpenAIEmbeddingModel
      AZURE_OPENAI_EMBEDDING_MODEL_NAME: azureOpenAIEmbeddingModelName
      AZURE_OPENAI_EMBEDDING_MODEL_VERSION: azureOpenAIEmbeddingModelVersion
      AZURE_SEARCH_USE_SEMANTIC_SEARCH: azureSearchUseSemanticSearch
      AZURE_SEARCH_SERVICE: 'https://${azureAISearchName}.search.windows.net'
      AZURE_SEARCH_INDEX: azureSearchIndex
      AZURE_SEARCH_CONVERSATIONS_LOG_INDEX: azureSearchConversationLogIndex
      AZURE_SEARCH_SEMANTIC_SEARCH_CONFIG: azureSearchSemanticSearchConfig
      AZURE_SEARCH_INDEX_IS_PRECHUNKED: azureSearchIndexIsPrechunked
      AZURE_SEARCH_TOP_K: azureSearchTopK
      AZURE_SEARCH_ENABLE_IN_DOMAIN: azureSearchEnableInDomain
      AZURE_SEARCH_CONTENT_COLUMNS: azureSearchContentColumns
      AZURE_SEARCH_CONTENT_VECTOR_COLUMNS: azureSearchVectorColumns
      AZURE_SEARCH_FILENAME_COLUMN: azureSearchFilenameColumn
      AZURE_SEARCH_FILTER: azureSearchFilter
      AZURE_SEARCH_TITLE_COLUMN: azureSearchTitleColumn
      AZURE_SEARCH_URL_COLUMN: azureSearchUrlColumn
      AZURE_SEARCH_USE_INTEGRATED_VECTORIZATION: azureSearchUseIntegratedVectorization
      AZURE_SPEECH_SERVICE_NAME: speechServiceName
      AZURE_SPEECH_SERVICE_REGION: location
      AZURE_SPEECH_RECOGNIZER_LANGUAGES: recognizedLanguages
      USE_ADVANCED_IMAGE_PROCESSING: useAdvancedImageProcessing
      ADVANCED_IMAGE_PROCESSING_MAX_IMAGES: advancedImageProcessingMaxImages
      ORCHESTRATION_STRATEGY: orchestrationStrategy
      CONVERSATION_FLOW: conversationFlow
      LOGLEVEL: logLevel
    }
  }
}

module adminweb './app/adminweb.bicep' = if (hostingModel == 'code') {
  name: adminWebsiteName
  scope: rg
  params: {
    name: adminWebsiteName
    location: location
    tags: union(tags, { 'azd-service-name': 'adminweb' })
    runtimeName: 'python'
    runtimeVersion: '3.11'
    appServicePlanId: hostingplan.outputs.name
    applicationInsightsName: monitoring.outputs.applicationInsightsName
    azureOpenAIName: openai.outputs.name
    azureAISearchName: search.outputs.name
    storageAccountName: storage.outputs.name
    formRecognizerName: formrecognizer.outputs.name
    contentSafetyName: contentsafety.outputs.name
    speechServiceName: speechService.outputs.name
    computerVisionName: useAdvancedImageProcessing ? computerVision.outputs.name : ''
    openAIKeyName: useKeyVault ? storekeys.outputs.OPENAI_KEY_NAME : ''
    storageAccountKeyName: useKeyVault ? storekeys.outputs.STORAGE_ACCOUNT_KEY_NAME : ''
    formRecognizerKeyName: useKeyVault ? storekeys.outputs.FORM_RECOGNIZER_KEY_NAME : ''
    searchKeyName: useKeyVault ? storekeys.outputs.SEARCH_KEY_NAME : ''
    computerVisionKeyName: useKeyVault ? storekeys.outputs.COMPUTER_VISION_KEY_NAME : ''
    contentSafetyKeyName: useKeyVault ? storekeys.outputs.CONTENT_SAFETY_KEY_NAME : ''
    speechKeyName: useKeyVault ? storekeys.outputs.SPEECH_KEY_NAME : ''
    useKeyVault: useKeyVault
    keyVaultName: useKeyVault || authType == 'rbac' ? keyvault.outputs.name : ''
    authType: authType
    appSettings: {
      AZURE_BLOB_ACCOUNT_NAME: storageAccountName
      AZURE_BLOB_CONTAINER_NAME: blobContainerName
      AZURE_COMPUTER_VISION_ENDPOINT: useAdvancedImageProcessing ? computerVision.outputs.endpoint : ''
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_API_VERSION: computerVisionVectorizeImageApiVersion
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_MODEL_VERSION: computerVisionVectorizeImageModelVersion
      AZURE_CONTENT_SAFETY_ENDPOINT: contentsafety.outputs.endpoint
      AZURE_FORM_RECOGNIZER_ENDPOINT: formrecognizer.outputs.endpoint
      AZURE_OPENAI_RESOURCE: azureOpenAIResourceName
      AZURE_OPENAI_MODEL: azureOpenAIModel
      AZURE_OPENAI_MODEL_NAME: azureOpenAIModelName
      AZURE_OPENAI_MODEL_VERSION: azureOpenAIModelVersion
      AZURE_OPENAI_TEMPERATURE: azureOpenAITemperature
      AZURE_OPENAI_TOP_P: azureOpenAITopP
      AZURE_OPENAI_MAX_TOKENS: azureOpenAIMaxTokens
      AZURE_OPENAI_STOP_SEQUENCE: azureOpenAIStopSequence
      AZURE_OPENAI_SYSTEM_MESSAGE: azureOpenAISystemMessage
      AZURE_OPENAI_API_VERSION: azureOpenAIApiVersion
      AZURE_OPENAI_STREAM: azureOpenAIStream
      AZURE_OPENAI_EMBEDDING_MODEL: azureOpenAIEmbeddingModel
      AZURE_OPENAI_EMBEDDING_MODEL_NAME: azureOpenAIEmbeddingModelName
      AZURE_OPENAI_EMBEDDING_MODEL_VERSION: azureOpenAIEmbeddingModelVersion
      AZURE_SEARCH_SERVICE: 'https://${azureAISearchName}.search.windows.net'
      AZURE_SEARCH_INDEX: azureSearchIndex
      AZURE_SEARCH_USE_SEMANTIC_SEARCH: azureSearchUseSemanticSearch
      AZURE_SEARCH_SEMANTIC_SEARCH_CONFIG: azureSearchSemanticSearchConfig
      AZURE_SEARCH_INDEX_IS_PRECHUNKED: azureSearchIndexIsPrechunked
      AZURE_SEARCH_TOP_K: azureSearchTopK
      AZURE_SEARCH_ENABLE_IN_DOMAIN: azureSearchEnableInDomain
      AZURE_SEARCH_CONTENT_COLUMNS: azureSearchContentColumns
      AZURE_SEARCH_CONTENT_VECTOR_COLUMNS: azureSearchVectorColumns
      AZURE_SEARCH_FILENAME_COLUMN: azureSearchFilenameColumn
      AZURE_SEARCH_FILTER: azureSearchFilter
      AZURE_SEARCH_TITLE_COLUMN: azureSearchTitleColumn
      AZURE_SEARCH_URL_COLUMN: azureSearchUrlColumn
      AZURE_SEARCH_DATASOURCE_NAME: azureSearchDatasource
      AZURE_SEARCH_INDEXER_NAME: azureSearchIndexer
      AZURE_SEARCH_USE_INTEGRATED_VECTORIZATION: azureSearchUseIntegratedVectorization
      USE_ADVANCED_IMAGE_PROCESSING: useAdvancedImageProcessing
      BACKEND_URL: 'https://${functionName}.azurewebsites.net'
      DOCUMENT_PROCESSING_QUEUE_NAME: queueName
      FUNCTION_KEY: clientKey
      ORCHESTRATION_STRATEGY: orchestrationStrategy
      LOGLEVEL: logLevel
    }
  }
}

module adminweb_docker './app/adminweb.bicep' = if (hostingModel == 'container') {
  name: '${adminWebsiteName}-docker'
  scope: rg
  params: {
    name: '${adminWebsiteName}-docker'
    location: location
    tags: union(tags, { 'azd-service-name': 'adminweb-docker' })
    dockerFullImageName: 'fruoccopublic.azurecr.io/rag-adminwebapp'
    appServicePlanId: hostingplan.outputs.name
    applicationInsightsName: monitoring.outputs.applicationInsightsName
    azureOpenAIName: openai.outputs.name
    azureAISearchName: search.outputs.name
    storageAccountName: storage.outputs.name
    formRecognizerName: formrecognizer.outputs.name
    contentSafetyName: contentsafety.outputs.name
    speechServiceName: speechService.outputs.name
    computerVisionName: useAdvancedImageProcessing ? computerVision.outputs.name : ''
    openAIKeyName: useKeyVault ? storekeys.outputs.OPENAI_KEY_NAME : ''
    storageAccountKeyName: useKeyVault ? storekeys.outputs.STORAGE_ACCOUNT_KEY_NAME : ''
    formRecognizerKeyName: useKeyVault ? storekeys.outputs.FORM_RECOGNIZER_KEY_NAME : ''
    searchKeyName: useKeyVault ? storekeys.outputs.SEARCH_KEY_NAME : ''
    contentSafetyKeyName: useKeyVault ? storekeys.outputs.CONTENT_SAFETY_KEY_NAME : ''
    speechKeyName: useKeyVault ? storekeys.outputs.SPEECH_KEY_NAME : ''
    computerVisionKeyName: useKeyVault ? storekeys.outputs.COMPUTER_VISION_KEY_NAME : ''
    useKeyVault: useKeyVault
    keyVaultName: useKeyVault || authType == 'rbac' ? keyvault.outputs.name : ''
    authType: authType
    appSettings: {
      AZURE_BLOB_ACCOUNT_NAME: storageAccountName
      AZURE_BLOB_CONTAINER_NAME: blobContainerName
      AZURE_COMPUTER_VISION_ENDPOINT: useAdvancedImageProcessing ? computerVision.outputs.endpoint : ''
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_API_VERSION: computerVisionVectorizeImageApiVersion
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_MODEL_VERSION: computerVisionVectorizeImageModelVersion
      AZURE_CONTENT_SAFETY_ENDPOINT: contentsafety.outputs.endpoint
      AZURE_FORM_RECOGNIZER_ENDPOINT: formrecognizer.outputs.endpoint
      AZURE_OPENAI_RESOURCE: azureOpenAIResourceName
      AZURE_OPENAI_MODEL: azureOpenAIModel
      AZURE_OPENAI_MODEL_NAME: azureOpenAIModelName
      AZURE_OPENAI_MODEL_VERSION: azureOpenAIModelVersion
      AZURE_OPENAI_TEMPERATURE: azureOpenAITemperature
      AZURE_OPENAI_TOP_P: azureOpenAITopP
      AZURE_OPENAI_MAX_TOKENS: azureOpenAIMaxTokens
      AZURE_OPENAI_STOP_SEQUENCE: azureOpenAIStopSequence
      AZURE_OPENAI_SYSTEM_MESSAGE: azureOpenAISystemMessage
      AZURE_OPENAI_API_VERSION: azureOpenAIApiVersion
      AZURE_OPENAI_STREAM: azureOpenAIStream
      AZURE_OPENAI_EMBEDDING_MODEL: azureOpenAIEmbeddingModel
      AZURE_OPENAI_EMBEDDING_MODEL_NAME: azureOpenAIEmbeddingModelName
      AZURE_OPENAI_EMBEDDING_MODEL_VERSION: azureOpenAIEmbeddingModelVersion
      AZURE_SEARCH_SERVICE: 'https://${azureAISearchName}.search.windows.net'
      AZURE_SEARCH_INDEX: azureSearchIndex
      AZURE_SEARCH_USE_SEMANTIC_SEARCH: azureSearchUseSemanticSearch
      AZURE_SEARCH_SEMANTIC_SEARCH_CONFIG: azureSearchSemanticSearchConfig
      AZURE_SEARCH_INDEX_IS_PRECHUNKED: azureSearchIndexIsPrechunked
      AZURE_SEARCH_TOP_K: azureSearchTopK
      AZURE_SEARCH_ENABLE_IN_DOMAIN: azureSearchEnableInDomain
      AZURE_SEARCH_CONTENT_COLUMNS: azureSearchContentColumns
      AZURE_SEARCH_CONTENT_VECTOR_COLUMNS: azureSearchVectorColumns
      AZURE_SEARCH_FILENAME_COLUMN: azureSearchFilenameColumn
      AZURE_SEARCH_FILTER: azureSearchFilter
      AZURE_SEARCH_TITLE_COLUMN: azureSearchTitleColumn
      AZURE_SEARCH_URL_COLUMN: azureSearchUrlColumn
      AZURE_SEARCH_DATASOURCE_NAME: azureSearchDatasource
      AZURE_SEARCH_INDEXER_NAME: azureSearchIndexer
      AZURE_SEARCH_USE_INTEGRATED_VECTORIZATION: azureSearchUseIntegratedVectorization
      USE_ADVANCED_IMAGE_PROCESSING: useAdvancedImageProcessing
      BACKEND_URL: 'https://${functionName}-docker.azurewebsites.net'
      DOCUMENT_PROCESSING_QUEUE_NAME: queueName
      FUNCTION_KEY: clientKey
      ORCHESTRATION_STRATEGY: orchestrationStrategy
      LOGLEVEL: logLevel
    }
  }
}

module monitoring './core/monitor/monitoring.bicep' = {
  name: 'monitoring'
  scope: rg
  params: {
    applicationInsightsName: applicationInsightsName
    location: location
    tags: {
      'hidden-link:${resourceId('Microsoft.Web/sites', applicationInsightsName)}': 'Resource'
    }
    logAnalyticsName: logAnalyticsName
    applicationInsightsDashboardName: 'dash-${applicationInsightsName}'
  }
}

module workbook './app/workbook.bicep' = {
  name: 'workbook'
  scope: rg
  params: {
    workbookDisplayName: workbookDisplayName
    location: location
    hostingPlanName: hostingplan.outputs.name
    functionName: hostingModel == 'container' ? function_docker.outputs.functionName : function.outputs.functionName
    websiteName: hostingModel == 'container' ? web_docker.outputs.FRONTEND_API_NAME : web.outputs.FRONTEND_API_NAME
    adminWebsiteName: hostingModel == 'container'
      ? adminweb_docker.outputs.WEBSITE_ADMIN_NAME
      : adminweb.outputs.WEBSITE_ADMIN_NAME
    eventGridSystemTopicName: eventgrid.outputs.name
    logAnalyticsName: monitoring.outputs.logAnalyticsWorkspaceName
    azureOpenAIResourceName: openai.outputs.name
    azureAISearchName: search.outputs.name
    storageAccountName: storage.outputs.name
  }
}

module function './app/function.bicep' = if (hostingModel == 'code') {
  name: functionName
  scope: rg
  params: {
    name: functionName
    location: location
    tags: union(tags, { 'azd-service-name': 'function' })
    runtimeName: 'python'
    runtimeVersion: '3.11'
    appServicePlanId: hostingplan.outputs.name
    applicationInsightsName: monitoring.outputs.applicationInsightsName
    azureOpenAIName: openai.outputs.name
    azureAISearchName: search.outputs.name
    storageAccountName: storage.outputs.name
    formRecognizerName: formrecognizer.outputs.name
    contentSafetyName: contentsafety.outputs.name
    speechServiceName: speechService.outputs.name
    computerVisionName: useAdvancedImageProcessing ? computerVision.outputs.name : ''
    clientKey: clientKey
    openAIKeyName: useKeyVault ? storekeys.outputs.OPENAI_KEY_NAME : ''
    storageAccountKeyName: useKeyVault ? storekeys.outputs.STORAGE_ACCOUNT_KEY_NAME : ''
    formRecognizerKeyName: useKeyVault ? storekeys.outputs.FORM_RECOGNIZER_KEY_NAME : ''
    searchKeyName: useKeyVault ? storekeys.outputs.SEARCH_KEY_NAME : ''
    contentSafetyKeyName: useKeyVault ? storekeys.outputs.CONTENT_SAFETY_KEY_NAME : ''
    speechKeyName: useKeyVault ? storekeys.outputs.SPEECH_KEY_NAME : ''
    computerVisionKeyName: useKeyVault ? storekeys.outputs.COMPUTER_VISION_KEY_NAME : ''
    useKeyVault: useKeyVault
    keyVaultName: useKeyVault || authType == 'rbac' ? keyvault.outputs.name : ''
    authType: authType
    appSettings: {
      AZURE_BLOB_ACCOUNT_NAME: storageAccountName
      AZURE_BLOB_CONTAINER_NAME: blobContainerName
      AZURE_COMPUTER_VISION_ENDPOINT: useAdvancedImageProcessing ? computerVision.outputs.endpoint : ''
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_API_VERSION: computerVisionVectorizeImageApiVersion
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_MODEL_VERSION: computerVisionVectorizeImageModelVersion
      AZURE_CONTENT_SAFETY_ENDPOINT: contentsafety.outputs.endpoint
      AZURE_FORM_RECOGNIZER_ENDPOINT: formrecognizer.outputs.endpoint
      AZURE_OPENAI_MODEL: azureOpenAIModel
      AZURE_OPENAI_MODEL_NAME: azureOpenAIModelName
      AZURE_OPENAI_MODEL_VERSION: azureOpenAIModelVersion
      AZURE_OPENAI_EMBEDDING_MODEL: azureOpenAIEmbeddingModel
      AZURE_OPENAI_EMBEDDING_MODEL_NAME: azureOpenAIEmbeddingModelName
      AZURE_OPENAI_EMBEDDING_MODEL_VERSION: azureOpenAIEmbeddingModelVersion
      AZURE_OPENAI_RESOURCE: azureOpenAIResourceName
      AZURE_OPENAI_API_VERSION: azureOpenAIApiVersion
      AZURE_SEARCH_INDEX: azureSearchIndex
      AZURE_SEARCH_SERVICE: 'https://${azureAISearchName}.search.windows.net'
      AZURE_SEARCH_DATASOURCE_NAME: azureSearchDatasource
      AZURE_SEARCH_INDEXER_NAME: azureSearchIndexer
      AZURE_SEARCH_USE_INTEGRATED_VECTORIZATION: azureSearchUseIntegratedVectorization
      USE_ADVANCED_IMAGE_PROCESSING: useAdvancedImageProcessing
      DOCUMENT_PROCESSING_QUEUE_NAME: queueName
      ORCHESTRATION_STRATEGY: orchestrationStrategy
      LOGLEVEL: logLevel
      AZURE_OPENAI_SYSTEM_MESSAGE: azureOpenAISystemMessage
      AZURE_SEARCH_TOP_K: azureSearchTopK
    }
  }
}

module function_docker './app/function.bicep' = if (hostingModel == 'container') {
  name: '${functionName}-docker'
  scope: rg
  params: {
    name: '${functionName}-docker'
    location: location
    tags: union(tags, { 'azd-service-name': 'function-docker' })
    dockerFullImageName: 'fruoccopublic.azurecr.io/rag-backend'
    appServicePlanId: hostingplan.outputs.name
    applicationInsightsName: monitoring.outputs.applicationInsightsName
    azureOpenAIName: openai.outputs.name
    azureAISearchName: search.outputs.name
    storageAccountName: storage.outputs.name
    formRecognizerName: formrecognizer.outputs.name
    contentSafetyName: contentsafety.outputs.name
    speechServiceName: speechService.outputs.name
    computerVisionName: useAdvancedImageProcessing ? computerVision.outputs.name : ''
    clientKey: clientKey
    openAIKeyName: useKeyVault ? storekeys.outputs.OPENAI_KEY_NAME : ''
    storageAccountKeyName: useKeyVault ? storekeys.outputs.STORAGE_ACCOUNT_KEY_NAME : ''
    formRecognizerKeyName: useKeyVault ? storekeys.outputs.FORM_RECOGNIZER_KEY_NAME : ''
    searchKeyName: useKeyVault ? storekeys.outputs.SEARCH_KEY_NAME : ''
    contentSafetyKeyName: useKeyVault ? storekeys.outputs.CONTENT_SAFETY_KEY_NAME : ''
    speechKeyName: useKeyVault ? storekeys.outputs.SPEECH_KEY_NAME : ''
    computerVisionKeyName: useKeyVault ? storekeys.outputs.COMPUTER_VISION_KEY_NAME : ''
    useKeyVault: useKeyVault
    keyVaultName: useKeyVault || authType == 'rbac' ? keyvault.outputs.name : ''
    authType: authType
    appSettings: {
      AZURE_BLOB_ACCOUNT_NAME: storageAccountName
      AZURE_BLOB_CONTAINER_NAME: blobContainerName
      AZURE_COMPUTER_VISION_ENDPOINT: useAdvancedImageProcessing ? computerVision.outputs.endpoint : ''
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_API_VERSION: computerVisionVectorizeImageApiVersion
      AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_MODEL_VERSION: computerVisionVectorizeImageModelVersion
      AZURE_CONTENT_SAFETY_ENDPOINT: contentsafety.outputs.endpoint
      AZURE_FORM_RECOGNIZER_ENDPOINT: formrecognizer.outputs.endpoint
      AZURE_OPENAI_MODEL: azureOpenAIModel
      AZURE_OPENAI_MODEL_NAME: azureOpenAIModelName
      AZURE_OPENAI_MODEL_VERSION: azureOpenAIModelVersion
      AZURE_OPENAI_EMBEDDING_MODEL: azureOpenAIEmbeddingModel
      AZURE_OPENAI_EMBEDDING_MODEL_NAME: azureOpenAIEmbeddingModelName
      AZURE_OPENAI_EMBEDDING_MODEL_VERSION: azureOpenAIEmbeddingModelVersion
      AZURE_OPENAI_RESOURCE: azureOpenAIResourceName
      AZURE_OPENAI_API_VERSION: azureOpenAIApiVersion
      AZURE_SEARCH_INDEX: azureSearchIndex
      AZURE_SEARCH_SERVICE: 'https://${azureAISearchName}.search.windows.net'
      AZURE_SEARCH_DATASOURCE_NAME: azureSearchDatasource
      AZURE_SEARCH_INDEXER_NAME: azureSearchIndexer
      AZURE_SEARCH_USE_INTEGRATED_VECTORIZATION: azureSearchUseIntegratedVectorization
      USE_ADVANCED_IMAGE_PROCESSING: useAdvancedImageProcessing
      DOCUMENT_PROCESSING_QUEUE_NAME: queueName
      ORCHESTRATION_STRATEGY: orchestrationStrategy
      LOGLEVEL: logLevel
      AZURE_OPENAI_SYSTEM_MESSAGE: azureOpenAISystemMessage
      AZURE_SEARCH_TOP_K: azureSearchTopK
    }
  }
}

module formrecognizer 'core/ai/cognitiveservices.bicep' = {
  name: formRecognizerName
  scope: rg
  params: {
    name: formRecognizerName
    location: location
    tags: tags
    kind: 'FormRecognizer'
  }
}

module contentsafety 'core/ai/cognitiveservices.bicep' = {
  name: contentSafetyName
  scope: rg
  params: {
    name: contentSafetyName
    location: location
    tags: tags
    kind: 'ContentSafety'
  }
}

module eventgrid 'app/eventgrid.bicep' = {
  name: eventGridSystemTopicName
  scope: rg
  params: {
    name: eventGridSystemTopicName
    location: location
    storageAccountId: storage.outputs.id
    queueName: queueName
    blobContainerName: blobContainerName
  }
}

module storage 'core/storage/storage-account.bicep' = {
  name: storageAccountName
  scope: rg
  params: {
    name: storageAccountName
    location: location
    sku: {
      name: 'Standard_GRS'
    }
    deleteRetentionPolicy: azureSearchUseIntegratedVectorization
      ? {
          enabled: true
          days: 7
        }
      : {}
    containers: [
      {
        name: blobContainerName
        publicAccess: 'None'
      }
      {
        name: 'config'
        publicAccess: 'None'
      }
    ]
    queues: [
      {
        name: 'doc-processing'
      }
      {
        name: 'doc-processing-poison'
      }
    ]
  }
}

// USER ROLES
// Storage Blob Data Contributor
module storageRoleUser 'core/security/role.bicep' = if (authType == 'rbac') {
  scope: rg
  name: 'storage-role-user'
  params: {
    principalId: principalId
    roleDefinitionId: 'ba92f5b4-2d11-453d-a403-e96b0029c9fe'
    principalType: 'User'
  }
}

// Cognitive Services User
module openaiRoleUser 'core/security/role.bicep' = if (authType == 'rbac') {
  scope: rg
  name: 'openai-role-user'
  params: {
    principalId: principalId
    roleDefinitionId: 'a97b65f3-24c7-4388-baec-2e87135dc908'
    principalType: 'User'
  }
}

// Contributor
module openaiRoleUserContributor 'core/security/role.bicep' = if (authType == 'rbac') {
  scope: rg
  name: 'openai-role-user-contributor'
  params: {
    principalId: principalId
    roleDefinitionId: 'b24988ac-6180-42a0-ab88-20f7382dd24c'
    principalType: 'User'
  }
}

// Search Index Data Contributor
module searchRoleUser 'core/security/role.bicep' = if (authType == 'rbac') {
  scope: rg
  name: 'search-role-user'
  params: {
    principalId: principalId
    roleDefinitionId: '8ebe5a00-799e-43f5-93ac-243d3dce84a7'
    principalType: 'User'
  }
}

module machineLearning 'app/machinelearning.bicep' = if (orchestrationStrategy == 'prompt_flow') {
  scope: rg
  name: azureMachineLearningName
  params: {
    location: location
    workspaceName: azureMachineLearningName
    storageAccountId: storage.outputs.id
    keyVaultId: useKeyVault ? keyvault.outputs.id : ''
    applicationInsightsId: monitoring.outputs.applicationInsightsId
    azureOpenAIName: openai.outputs.name
    azureAISearchName: search.outputs.name
    azureAISearchEndpoint: search.outputs.endpoint
    azureOpenAIEndpoint: openai.outputs.endpoint
  }
}

@description('The connection string of the application insights component.')
output applicationInsightsConnectionString string = monitoring.outputs.applicationInsightsConnectionString

@description('The app service hosting model.')
output azureAppServiceHostingModel string = hostingModel

@description('The Blob container name.')
output azureBlobContainerName string = blobContainerName

@description('The Storage account name.')
output azureBlobAccountName string = storageAccountName

@description('The storage account key.')
output azureBlobAccountKey string = useKeyVault ? storekeys.outputs.STORAGE_ACCOUNT_KEY_NAME : ''

@description('The computer vision endpoint.')
output azureComputerVisionEndpoint string = useAdvancedImageProcessing ? computerVision.outputs.endpoint : ''

@description('The omputer vision region.')
output azureComputerVisionLocation string = useAdvancedImageProcessing ? computerVision.outputs.location : ''

@description('The computer Vision Key.')
output azureComputerVisionKey string = useKeyVault ? storekeys.outputs.COMPUTER_VISION_KEY_NAME : ''

@description('The computer vision image vectorization API version.')
output azureComputerVisionVectorizeImageApiVersion string = computerVisionVectorizeImageApiVersion

@description('The computer vision image model version.')
output azureComputerVisionVectorizeImageModelVersion string = computerVisionVectorizeImageModelVersion

@description('The content safety endpoint.')
output azureContentSafetyEndpoint string = contentsafety.outputs.endpoint

@description('The content safety key name.')
output azureContentSafetyKey string = useKeyVault ? storekeys.outputs.CONTENT_SAFETY_KEY_NAME : ''

@description('The form recognizer endpoint.')
output azureFormRecognizerEndpoint string = formrecognizer.outputs.endpoint

@description('The form recognizer key.')
output azureFormRecognizerKey string = useKeyVault ? storekeys.outputs.FORM_RECOGNIZER_KEY_NAME : ''

@description('The key vault endpoint.')
output azureKeyVaultEndpoint string = useKeyVault ? keyvault.outputs.endpoint : ''

@description('The key vault name.')
output azureKeyVaultName string = useKeyVault || authType == 'rbac' ? keyvault.outputs.name : ''

@description('The deployment region.')
output azureLocation string = location

@description('The Open AI model name.')
output azureOpenAIModelName string = azureOpenAIModelName

@description('The Open AI model version.')
output azureOpenAIModelVersion string = azureOpenAIModelVersion

@description('The Open AI Stream name.')
output azureOpenAIStream string = azureOpenAIStream

@description('The Open AI system message.')
output azureOpenAISystemMessage string = azureOpenAISystemMessage

@description('The Open AI stop sequence.')
output azureOpenAIStopSequence string = azureOpenAIStopSequence

@description('The maximum number of tokens allowed for the Open AI model.')
output azureOpenAIMaxTokens string = azureOpenAIMaxTokens

@description('The Open AI top P setting.')
output azureOpenAITopP string = azureOpenAITopP

@description('The Open AI Stream name.')
output azureOpenAITemperature string = azureOpenAITemperature

@description('The Open AI API version.')
output azureOpenAIApiVersion string = azureOpenAIApiVersion

@description('The Open AI resource name.')
output azureOpenAIResource string = azureOpenAIResourceName

@description('The Open AI Embedding Model name.')
output azureOpenAIEmbeddingModelName string = azureOpenAIEmbeddingModelName

@description('The Open AI Embedding Model version.')
output azureOpenAIEmbeddingModelVersion string = azureOpenAIEmbeddingModelVersion

@description('The Open AI API key.')
output azureOpenAIAPIKey string = useKeyVault ? storekeys.outputs.OPENAI_KEY_NAME : ''

@description('The resource group name for the deployment.')
output azureResourceGroup string = rgName

@description('The search key name.')
output azureSearchKey string = useKeyVault ? storekeys.outputs.SEARCH_KEY_NAME : ''

@description('The name of your Azure AI Search resource.')
output azureSearchService string = search.outputs.endpoint

@description('The value that turns the semantic search on or off.')
output azureSearchUseSemanticSearch bool = azureSearchUseSemanticSearch

@description('The name of the semantic search configuration to use if using semantic search.')
output azureSearchSemanticSearchConfig string = azureSearchSemanticSearchConfig

@description('Value that determines if index is prechunked.')
output azureSearchIndexIsPrechunked string = azureSearchIndexIsPrechunked

@description('The number of documents that should be returned on a search.')
output azureSearchTopK string = azureSearchTopK

@description('Limits responses to only queries relating to your data.')
output azureSearchEnableInDomain string = azureSearchEnableInDomain

@description('List of fields in your search index that contains the text content of your documents to use when formulating a bot response. Represent these as a string joined with.')
output azureSearchContentColumns string = azureSearchContentColumns

@description('List of fields in your search index that contain vector embeddings of your documents to use when formulating a bot response. Represent these as a string joined with.')
output azureSearchVectorColumns string = azureSearchVectorColumns

@description('Field from your search index that gives a unique identifier of the source of your data to display in the UI.')
output azureSearchFilenameColumn string = azureSearchFilenameColumn

@description('The name of your Azure search filter.')
output azureSearchFilter string = azureSearchFilter

@description('The name of the search title column.')
output azureSearchTitleColumn string = azureSearchTitleColumn

@description('The name of the URL column.')
output azureSearchUrlColumn string = azureSearchUrlColumn

@description('Boolean to use integrated vectorization.')
output azureSearchUseIntegratedVectorization bool = azureSearchUseIntegratedVectorization

@description('The name of your Azure AI Search Index.')
output azureSearchIndex string = azureSearchIndex

@description('The name of your Azure AI Search Indexer.')
output azureSearchIndexerName string = azureSearchIndexer

@description('The name of your Azure AI data source.')
output azureSearchDatasourceName string = azureSearchDatasource

@description('The name of your Azure Speech Service.')
output azureSpeechServiceName string = speechServiceName

@description('The loccation of the Speech Service.')
output azureSpeechServiceRegion string = location

@description('The nspeech service key.')
output azureSpeechServiceKey string = useKeyVault ? storekeys.outputs.SPEECH_KEY_NAME : ''

@description('Languages the speech service will recognize.')
output azureSpeechRecognizerLanguages string = recognizedLanguages

@description('The tenant ID.')
output azureTenantId string = tenant().tenantId

@description('The name of the document processing queue.')
output documentProcessingQueueName string = queueName

@description('The strategy for Azure service orchestration.')
output orchestrationStrategy string = orchestrationStrategy

@description('Boolean for using the keyvault.')
output useKeyVault bool = useKeyVault

@description('The name of your frontend website.')
output frontendWebsiteName string = hostingModel == 'code'
  ? web.outputs.FRONTEND_API_URI
  : web_docker.outputs.FRONTEND_API_URI

@description('The name of your admin website.')
output adminWebsiteName string = hostingModel == 'code'
  ? adminweb.outputs.WEBSITE_ADMIN_URI
  : adminweb_docker.outputs.WEBSITE_ADMIN_URI

@description('The log level for application insights.')
output logLevel string = logLevel

@description('The name of the conversation flow.')
output conversationFlow string = conversationFlow

@description('Boolean that determines if advaced image processing is used.')
output useAdvancedImageProcessing bool = useAdvancedImageProcessing

@description('The maximum number of images to be processed.')
output advancedImageProcessingMaxImages int = advancedImageProcessingMaxImages

@description('The name of your Azure ML workspace.')
output azureMLWorkspaceName string = orchestrationStrategy == 'prompt_flow' ? machineLearning.outputs.workspaceName : ''

@description('The name of your resource token.')
output resourceToken string = resourceToken
