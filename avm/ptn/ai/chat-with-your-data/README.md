# CWYD `[Ai/ChatWithYourData]`

This solution accelerator uses an Azure OpenAI GPT model and an Azure AI Search index generated from your data,
which is integrated into a web application to provide a natural language interface, including speech-to-text functionality, for search queries.

## Navigation

- [Resource Types](#Resource-Types)
- [Usage examples](#Usage-examples)
- [Parameters](#Parameters)
- [Outputs](#Outputs)
- [Cross-referenced modules](#Cross-referenced-modules)
- [Data Collection](#Data-Collection)

## Resource Types

| Resource Type | API Version |
| :-- | :-- |
| `Microsoft.Authorization/locks` | [2020-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Authorization/2020-05-01/locks) |
| `Microsoft.Authorization/roleAssignments` | [2022-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Authorization/2022-04-01/roleAssignments) |
| `Microsoft.CognitiveServices/accounts` | [2023-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.CognitiveServices/2023-05-01/accounts) |
| `Microsoft.CognitiveServices/accounts/deployments` | [2023-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.CognitiveServices/2023-05-01/accounts/deployments) |
| `Microsoft.DBforPostgreSQL/flexibleServers` | [2023-12-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DBforPostgreSQL/2023-12-01-preview/flexibleServers) |
| `Microsoft.DBforPostgreSQL/flexibleServers/administrators` | [2022-12-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DBforPostgreSQL/2022-12-01/flexibleServers/administrators) |
| `Microsoft.DBforPostgreSQL/flexibleServers/configurations` | [2023-12-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DBforPostgreSQL/2023-12-01-preview/flexibleServers/configurations) |
| `Microsoft.DBforPostgreSQL/flexibleServers/firewallRules` | [2023-12-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DBforPostgreSQL/2023-12-01-preview/flexibleServers/firewallRules) |
| `Microsoft.DocumentDB/databaseAccounts` | [2022-08-15](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DocumentDB/2022-08-15/databaseAccounts) |
| `Microsoft.DocumentDB/databaseAccounts/sqlDatabases` | [2022-05-15](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DocumentDB/2022-05-15/databaseAccounts/sqlDatabases) |
| `Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers` | [2022-05-15](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DocumentDB/2022-05-15/databaseAccounts/sqlDatabases/containers) |
| `Microsoft.DocumentDB/databaseAccounts/sqlRoleAssignments` | [2022-05-15](https://learn.microsoft.com/en-us/azure/templates/Microsoft.DocumentDB/2022-05-15/databaseAccounts/sqlRoleAssignments) |
| `Microsoft.EventGrid/systemTopics` | [2021-12-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.EventGrid/2021-12-01/systemTopics) |
| `Microsoft.EventGrid/systemTopics/eventSubscriptions` | [2021-12-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.EventGrid/2021-12-01/systemTopics/eventSubscriptions) |
| `Microsoft.Insights/components` | [2020-02-02](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2020-02-02/components) |
| `Microsoft.Insights/diagnosticSettings` | [2021-05-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2021-05-01-preview/diagnosticSettings) |
| `Microsoft.Insights/workbooks` | [2023-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2023-06-01/workbooks) |
| `Microsoft.KeyVault/vaults` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults) |
| `Microsoft.KeyVault/vaults/accessPolicies` | [2023-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2023-07-01/vaults/accessPolicies) |
| `Microsoft.KeyVault/vaults/accessPolicies` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults/accessPolicies) |
| `Microsoft.KeyVault/vaults/keys` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults/keys) |
| `Microsoft.KeyVault/vaults/secrets` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults/secrets) |
| `Microsoft.MachineLearningServices/workspaces` | [2023-06-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.MachineLearningServices/2023-06-01-preview/workspaces) |
| `Microsoft.MachineLearningServices/workspaces/connections` | [2024-01-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.MachineLearningServices/2024-01-01-preview/workspaces/connections) |
| `Microsoft.ManagedIdentity/userAssignedIdentities` | [2023-01-31](https://learn.microsoft.com/en-us/azure/templates/Microsoft.ManagedIdentity/2023-01-31/userAssignedIdentities) |
| `Microsoft.Network/privateEndpoints` | [2023-11-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-11-01/privateEndpoints) |
| `Microsoft.Network/privateEndpoints/privateDnsZoneGroups` | [2023-11-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Network/2023-11-01/privateEndpoints/privateDnsZoneGroups) |
| `Microsoft.OperationalInsights/workspaces` | [2021-12-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.OperationalInsights/2021-12-01-preview/workspaces) |
| `Microsoft.Portal/dashboards` | [2020-09-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Portal/2020-09-01-preview/dashboards) |
| `Microsoft.Resources/deploymentScripts` | [2020-10-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Resources/2020-10-01/deploymentScripts) |
| `Microsoft.Search/searchServices` | [2021-04-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Search/2021-04-01-preview/searchServices) |
| `Microsoft.Storage/storageAccounts` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts) |
| `Microsoft.Storage/storageAccounts/blobServices` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts/blobServices) |
| `Microsoft.Storage/storageAccounts/blobServices/containers` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts/blobServices/containers) |
| `Microsoft.Storage/storageAccounts/queueServices` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts/queueServices) |
| `Microsoft.Storage/storageAccounts/queueServices/queues` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts/queueServices/queues) |
| `Microsoft.Web/serverfarms` | [2022-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/2022-03-01/serverfarms) |
| `Microsoft.Web/sites` | [2022-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/2022-03-01/sites) |
| `Microsoft.Web/sites/basicPublishingCredentialsPolicies` | [2022-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/2022-03-01/sites/basicPublishingCredentialsPolicies) |
| `Microsoft.Web/sites/config` | [2022-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/2022-03-01/sites/config) |
| `Microsoft.Web/sites/host/functionKeys` | [2018-11-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/sites) |

## Usage examples

The following section provides usage examples for the module, which were used to validate and deploy the module successfully. For a full reference, please review the module's test folder in its repository.

>**Note**: Each example lists all the required parameters first, followed by the rest - each in alphabetical order.

>**Note**: To reference the module, please use the following syntax `br/public:avm/ptn/ai/chat-with-your-data:<version>`.

- [Using only defaults](#example-1-using-only-defaults)
- [WAF-aligned](#example-2-waf-aligned)

### Example 1: _Using only defaults_

This instance deploys the module with the minimum set of required parameters.


<details>

<summary>via Bicep module</summary>

```bicep
module chatWithYourData 'br/public:avm/ptn/ai/chat-with-your-data:<version>' = {
  name: 'chatWithYourDataDeployment'
  params: {
    // Required parameters
    environmentName: 'acwydmin001'
    // Non-required parameters
    location: '<location>'
  }
}
```

</details>
<p>

<details>

<summary>via JSON parameters file</summary>

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    // Required parameters
    "environmentName": {
      "value": "acwydmin001"
    },
    // Non-required parameters
    "location": {
      "value": "<location>"
    }
  }
}
```

</details>
<p>

<details>

<summary>via Bicep parameters file</summary>

```bicep-params
using 'br/public:avm/ptn/ai/chat-with-your-data:<version>'

// Required parameters
param environmentName = 'acwydmin001'
// Non-required parameters
param location = '<location>'
```

</details>
<p>

### Example 2: _WAF-aligned_

This instance deploys the module in alignment with the best-practices of the Azure Well-Architected Framework.


<details>

<summary>via Bicep module</summary>

```bicep
module chatWithYourData 'br/public:avm/ptn/ai/chat-with-your-data:<version>' = {
  name: 'chatWithYourDataDeployment'
  params: {
    // Required parameters
    environmentName: 'acwydwaf001'
    // Non-required parameters
    location: '<location>'
  }
}
```

</details>
<p>

<details>

<summary>via JSON parameters file</summary>

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    // Required parameters
    "environmentName": {
      "value": "acwydwaf001"
    },
    // Non-required parameters
    "location": {
      "value": "<location>"
    }
  }
}
```

</details>
<p>

<details>

<summary>via Bicep parameters file</summary>

```bicep-params
using 'br/public:avm/ptn/ai/chat-with-your-data:<version>'

// Required parameters
param environmentName = 'acwydwaf001'
// Non-required parameters
param location = '<location>'
```

</details>
<p>

## Parameters

**Required parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`environmentName`](#parameter-environmentname) | string | Name of the the environment which is used to generate a short unique hash used in all resources. |

**Optional parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`adminWebsiteName`](#parameter-adminwebsitename) | string | Name of Admin Web App. |
| [`advancedImageProcessingMaxImages`](#parameter-advancedimageprocessingmaximages) | int | The maximum number of images to pass to the vision model in a single request. |
| [`applicationInsightsName`](#parameter-applicationinsightsname) | string | Name of Application Insights. |
| [`authType`](#parameter-authtype) | string | Whether the Azure services communicate with each other using RBAC or keys. RBAC is recommended, however some users may not have sufficient permissions to assign roles. |
| [`azureAISearchName`](#parameter-azureaisearchname) | string | Azure AI Search Resource. |
| [`azureCosmosDBAccountName`](#parameter-azurecosmosdbaccountname) | string | Azure Cosmos DB Account Name. |
| [`azureMachineLearningName`](#parameter-azuremachinelearningname) | string | Azure Machine Learning Name. |
| [`azureOpenAIApiVersion`](#parameter-azureopenaiapiversion) | string | Azure OpenAI Api Version. |
| [`azureOpenAIEmbeddingModel`](#parameter-azureopenaiembeddingmodel) | string | Azure OpenAI Embedding Model Deployment Name. |
| [`azureOpenAIEmbeddingModelCapacity`](#parameter-azureopenaiembeddingmodelcapacity) | int | Azure OpenAI Embedding Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota . |
| [`azureOpenAIEmbeddingModelName`](#parameter-azureopenaiembeddingmodelname) | string | Azure OpenAI Embedding Model Name. |
| [`azureOpenAIEmbeddingModelVersion`](#parameter-azureopenaiembeddingmodelversion) | string | Azure OpenAI Embedding Model Version. |
| [`azureOpenAIMaxToks`](#parameter-azureopenaimaxtoks) | string | Azure OpenAI Max Tokens. |
| [`azureOpenAIModel`](#parameter-azureopenaimodel) | string | Azure OpenAI Model Deployment Name. |
| [`azureOpenAIModelCapacity`](#parameter-azureopenaimodelcapacity) | int | Azure OpenAI Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota . |
| [`azureOpenAIModelName`](#parameter-azureopenaimodelname) | string | Azure OpenAI Model Name. |
| [`azureOpenAIModelVersion`](#parameter-azureopenaimodelversion) | string | Azure OpenAI Model Version. |
| [`azureOpenAIResourceName`](#parameter-azureopenairesourcename) | string | Name of Azure OpenAI Resource. |
| [`azureOpenAISkuName`](#parameter-azureopenaiskuname) | string | Name of Azure OpenAI Resource SKU. |
| [`azureOpenAIStopSequence`](#parameter-azureopenaistopsequence) | string | Azure OpenAI Stop Sequence. |
| [`azureOpenAIStream`](#parameter-azureopenaistream) | string | Whether or not to stream responses from Azure OpenAI. |
| [`azureOpenAISystemMessage`](#parameter-azureopenaisystemmessage) | string | Azure OpenAI System Message. |
| [`azureOpenAITemperature`](#parameter-azureopenaitemperature) | string | Azure OpenAI Temperature. |
| [`azureOpenAITopP`](#parameter-azureopenaitopp) | string | Azure OpenAI Top P. |
| [`azureOpenAIVisionModel`](#parameter-azureopenaivisionmodel) | string | Azure OpenAI Vision Model Deployment Name. |
| [`azureOpenAIVisionModelCapacity`](#parameter-azureopenaivisionmodelcapacity) | int | Azure OpenAI Vision Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota . |
| [`azureOpenAIVisionModelName`](#parameter-azureopenaivisionmodelname) | string | Azure OpenAI Vision Model Name. |
| [`azureOpenAIVisionModelVersion`](#parameter-azureopenaivisionmodelversion) | string | Azure OpenAI Vision Model Version. |
| [`azurePostgresDBAccountName`](#parameter-azurepostgresdbaccountname) | string | Azure Postgres DB Account Name. |
| [`azureSearchChunkColumn`](#parameter-azuresearchchunkcolumn) | string | Chunk column. |
| [`azureSearchContentColumn`](#parameter-azuresearchcontentcolumn) | string | Content columns. |
| [`azureSearchConversationLogIndex`](#parameter-azuresearchconversationlogindex) | string | Azure AI Search Conversation Log Index. |
| [`azureSearchDatasource`](#parameter-azuresearchdatasource) | string | Azure AI Search Datasource. |
| [`azureSearchEnableInDomain`](#parameter-azuresearchenableindomain) | string | Enable in domain. |
| [`azureSearchFieldId`](#parameter-azuresearchfieldid) | string | Field id. |
| [`azureSearchFieldsMetadata`](#parameter-azuresearchfieldsmetadata) | string | Metadata column. |
| [`azureSearchFilenameColumn`](#parameter-azuresearchfilenamecolumn) | string | Filename column. |
| [`azureSearchFilter`](#parameter-azuresearchfilter) | string | Search filter. |
| [`azureSearchIndex`](#parameter-azuresearchindex) | string | Azure AI Search Index. |
| [`azureSearchIndexer`](#parameter-azuresearchindexer) | string | Azure AI Search Indexer. |
| [`azureSearchIndexIsPrechunked`](#parameter-azuresearchindexisprechunked) | string | Is the index prechunked. |
| [`azureSearchOffsetColumn`](#parameter-azuresearchoffsetcolumn) | string | Offset column. |
| [`azureSearchSemanticSearchConfig`](#parameter-azuresearchsemanticsearchconfig) | string | Semantic search config. |
| [`azureSearchSku`](#parameter-azuresearchsku) | string | The SKU of the search service you want to create. E.g. free or standard. |
| [`azureSearchSourceColumn`](#parameter-azuresearchsourcecolumn) | string | Source column. |
| [`azureSearchTitleColumn`](#parameter-azuresearchtitlecolumn) | string | Title column. |
| [`azureSearchTopK`](#parameter-azuresearchtopk) | string | Top K results. |
| [`azureSearchUrlColumn`](#parameter-azuresearchurlcolumn) | string | Url column. |
| [`azureSearchUseIntegratedVectorization`](#parameter-azuresearchuseintegratedvectorization) | bool | Use Azure Search Integrated Vectorization. |
| [`azureSearchUseSemanticSearch`](#parameter-azuresearchusesemanticsearch) | bool | Use semantic search. |
| [`azureSearchVectorColumn`](#parameter-azuresearchvectorcolumn) | string | Vector columns. |
| [`computerVisionLocation`](#parameter-computervisionlocation) | string | Location of Computer Vision Resource (if useAdvancedImageProcessing=true). |
| [`computerVisionName`](#parameter-computervisionname) | string | Name of Computer Vision Resource (if useAdvancedImageProcessing=true). |
| [`computerVisionSkuName`](#parameter-computervisionskuname) | string | Name of Computer Vision Resource SKU (if useAdvancedImageProcessing=true). |
| [`computerVisionVectorizeImageApiVersion`](#parameter-computervisionvectorizeimageapiversion) | string | Azure Computer Vision Vectorize Image API Version. |
| [`computerVisionVectorizeImageModelVersion`](#parameter-computervisionvectorizeimagemodelversion) | string | Azure Computer Vision Vectorize Image Model Version. |
| [`contentSafetyName`](#parameter-contentsafetyname) | string | Azure Content Safety Name. |
| [`conversationFlow`](#parameter-conversationflow) | string | Chat conversation type: custom or byod. If the database type is PostgreSQL, set this to custom. |
| [`enableTelemetry`](#parameter-enabletelemetry) | bool | Enable/Disable usage telemetry for module. |
| [`formRecognizerName`](#parameter-formrecognizername) | string | Azure Form Recognizer Name. |
| [`functionName`](#parameter-functionname) | string | Name of Function App for Batch document processing. |
| [`hostingModel`](#parameter-hostingmodel) | string | Hosting model for the web apps. This value is fixed as "container", which uses prebuilt containers for faster deployment. |
| [`hostingPlanName`](#parameter-hostingplanname) | string | Name of App Service plan. |
| [`hostingPlanSku`](#parameter-hostingplansku) | string | The pricing tier for the App Service plan. |
| [`keyvaultname`](#parameter-keyvaultname) | string | Name of Keyvault. |
| [`location`](#parameter-location) | string | Location for all resources. |
| [`logAnalyticsName`](#parameter-loganalyticsname) | string | Log Analytics Name. |
| [`logLevel`](#parameter-loglevel) | string | Log level web service. |
| [`newGuidString`](#parameter-newguidstring) | string | Guid. |
| [`orchestrationStrategy`](#parameter-orchestrationstrategy) | string | Orchestration strategy: openai_function or semantic_kernel or langchain str. If you use a old version of turbo (0301), please select langchain. |
| [`principalId`](#parameter-principalid) | string | Id of the user or app to assign application roles. |
| [`recognizedLanguages`](#parameter-recognizedlanguages) | string | List of comma-separated languages to recognize from the speech input. Supported languages are listed here: https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=stt#supported-languages . |
| [`resourceName`](#parameter-resourcename) | string | Resource Name. |
| [`searchTag`](#parameter-searchtag) | string | Search Tag. |
| [`skuTier`](#parameter-skutier) | string | The sku tier for the App Service plan. |
| [`speechServiceName`](#parameter-speechservicename) | string | Azure Speech Service Name. |
| [`storageAccountName`](#parameter-storageaccountname) | string | Name of Storage Account. |
| [`useAdvancedImageProcessing`](#parameter-useadvancedimageprocessing) | bool | Enables the use of a vision LLM and Computer Vision for embedding images. |
| [`useKeyVault`](#parameter-usekeyvault) | bool | Whether to use Key Vault to store secrets (best when using keys). If using RBAC, then please set this to false. |
| [`websiteName`](#parameter-websitename) | string | Name of Web App. |
| [`workbookDisplayName`](#parameter-workbookdisplayname) | string | Name of the Workbook. |

**Optionl parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`databaseType`](#parameter-databasetype) | string | The type of database to deploy (cosmos or postgres). |

### Parameter: `environmentName`

Name of the the environment which is used to generate a short unique hash used in all resources.

- Required: Yes
- Type: string

### Parameter: `adminWebsiteName`

Name of Admin Web App.

- Required: No
- Type: string
- Default: `[format('{0}-admin', parameters('websiteName'))]`

### Parameter: `advancedImageProcessingMaxImages`

The maximum number of images to pass to the vision model in a single request.

- Required: No
- Type: int
- Default: `1`

### Parameter: `applicationInsightsName`

Name of Application Insights.

- Required: No
- Type: string
- Default: `[format('appinsights-{0}', parameters('resourceName'))]`

### Parameter: `authType`

Whether the Azure services communicate with each other using RBAC or keys. RBAC is recommended, however some users may not have sufficient permissions to assign roles.

- Required: No
- Type: string
- Default: `'rbac'`
- Allowed:
  ```Bicep
  [
    'keys'
    'rbac'
  ]
  ```

### Parameter: `azureAISearchName`

Azure AI Search Resource.

- Required: No
- Type: string
- Default: `[format('search-{0}', parameters('resourceName'))]`

### Parameter: `azureCosmosDBAccountName`

Azure Cosmos DB Account Name.

- Required: No
- Type: string
- Default: `[format('cosmos-{0}', parameters('resourceName'))]`

### Parameter: `azureMachineLearningName`

Azure Machine Learning Name.

- Required: No
- Type: string
- Default: `[format('aml-{0}', parameters('resourceName'))]`

### Parameter: `azureOpenAIApiVersion`

Azure OpenAI Api Version.

- Required: No
- Type: string
- Default: `'2024-02-01'`

### Parameter: `azureOpenAIEmbeddingModel`

Azure OpenAI Embedding Model Deployment Name.

- Required: No
- Type: string
- Default: `'text-embedding-ada-002'`

### Parameter: `azureOpenAIEmbeddingModelCapacity`

Azure OpenAI Embedding Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota .

- Required: No
- Type: int
- Default: `30`

### Parameter: `azureOpenAIEmbeddingModelName`

Azure OpenAI Embedding Model Name.

- Required: No
- Type: string
- Default: `'text-embedding-ada-002'`

### Parameter: `azureOpenAIEmbeddingModelVersion`

Azure OpenAI Embedding Model Version.

- Required: No
- Type: string
- Default: `'2'`

### Parameter: `azureOpenAIMaxToks`

Azure OpenAI Max Tokens.

- Required: No
- Type: string
- Default: `'1000'`

### Parameter: `azureOpenAIModel`

Azure OpenAI Model Deployment Name.

- Required: No
- Type: string
- Default: `'gpt-35-turbo-16k'`

### Parameter: `azureOpenAIModelCapacity`

Azure OpenAI Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota .

- Required: No
- Type: int
- Default: `30`

### Parameter: `azureOpenAIModelName`

Azure OpenAI Model Name.

- Required: No
- Type: string
- Default: `'gpt-35-turbo-16k'`

### Parameter: `azureOpenAIModelVersion`

Azure OpenAI Model Version.

- Required: No
- Type: string
- Default: `'0613'`

### Parameter: `azureOpenAIResourceName`

Name of Azure OpenAI Resource.

- Required: No
- Type: string
- Default: `[format('openai-{0}', parameters('resourceName'))]`

### Parameter: `azureOpenAISkuName`

Name of Azure OpenAI Resource SKU.

- Required: No
- Type: string
- Default: `'S0'`

### Parameter: `azureOpenAIStopSequence`

Azure OpenAI Stop Sequence.

- Required: No
- Type: string
- Default: `''`

### Parameter: `azureOpenAIStream`

Whether or not to stream responses from Azure OpenAI.

- Required: No
- Type: string
- Default: `'true'`

### Parameter: `azureOpenAISystemMessage`

Azure OpenAI System Message.

- Required: No
- Type: string
- Default: `'You are an AI assistant that helps people find information.'`

### Parameter: `azureOpenAITemperature`

Azure OpenAI Temperature.

- Required: No
- Type: string
- Default: `'0'`

### Parameter: `azureOpenAITopP`

Azure OpenAI Top P.

- Required: No
- Type: string
- Default: `'1'`

### Parameter: `azureOpenAIVisionModel`

Azure OpenAI Vision Model Deployment Name.

- Required: No
- Type: string
- Default: `'gpt-4'`

### Parameter: `azureOpenAIVisionModelCapacity`

Azure OpenAI Vision Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota .

- Required: No
- Type: int
- Default: `10`

### Parameter: `azureOpenAIVisionModelName`

Azure OpenAI Vision Model Name.

- Required: No
- Type: string
- Default: `'gpt-4'`

### Parameter: `azureOpenAIVisionModelVersion`

Azure OpenAI Vision Model Version.

- Required: No
- Type: string
- Default: `'vision-preview'`

### Parameter: `azurePostgresDBAccountName`

Azure Postgres DB Account Name.

- Required: No
- Type: string
- Default: `[format('postgres-{0}', parameters('resourceName'))]`

### Parameter: `azureSearchChunkColumn`

Chunk column.

- Required: No
- Type: string
- Default: `'chunk'`

### Parameter: `azureSearchContentColumn`

Content columns.

- Required: No
- Type: string
- Default: `'content'`

### Parameter: `azureSearchConversationLogIndex`

Azure AI Search Conversation Log Index.

- Required: No
- Type: string
- Default: `'conversations'`

### Parameter: `azureSearchDatasource`

Azure AI Search Datasource.

- Required: No
- Type: string
- Default: `[format('datasource-{0}', parameters('resourceName'))]`

### Parameter: `azureSearchEnableInDomain`

Enable in domain.

- Required: No
- Type: string
- Default: `'true'`

### Parameter: `azureSearchFieldId`

Field id.

- Required: No
- Type: string
- Default: `'id'`

### Parameter: `azureSearchFieldsMetadata`

Metadata column.

- Required: No
- Type: string
- Default: `'metadata'`

### Parameter: `azureSearchFilenameColumn`

Filename column.

- Required: No
- Type: string
- Default: `'filename'`

### Parameter: `azureSearchFilter`

Search filter.

- Required: No
- Type: string
- Default: `''`

### Parameter: `azureSearchIndex`

Azure AI Search Index.

- Required: No
- Type: string
- Default: `[format('index-{0}', parameters('resourceName'))]`

### Parameter: `azureSearchIndexer`

Azure AI Search Indexer.

- Required: No
- Type: string
- Default: `[format('indexer-{0}', parameters('resourceName'))]`

### Parameter: `azureSearchIndexIsPrechunked`

Is the index prechunked.

- Required: No
- Type: string
- Default: `'false'`

### Parameter: `azureSearchOffsetColumn`

Offset column.

- Required: No
- Type: string
- Default: `'offset'`

### Parameter: `azureSearchSemanticSearchConfig`

Semantic search config.

- Required: No
- Type: string
- Default: `'default'`

### Parameter: `azureSearchSku`

The SKU of the search service you want to create. E.g. free or standard.

- Required: No
- Type: string
- Default: `'standard'`
- Allowed:
  ```Bicep
  [
    'basic'
    'free'
    'standard'
    'standard2'
    'standard3'
  ]
  ```

### Parameter: `azureSearchSourceColumn`

Source column.

- Required: No
- Type: string
- Default: `'source'`

### Parameter: `azureSearchTitleColumn`

Title column.

- Required: No
- Type: string
- Default: `'title'`

### Parameter: `azureSearchTopK`

Top K results.

- Required: No
- Type: string
- Default: `'5'`

### Parameter: `azureSearchUrlColumn`

Url column.

- Required: No
- Type: string
- Default: `'url'`

### Parameter: `azureSearchUseIntegratedVectorization`

Use Azure Search Integrated Vectorization.

- Required: No
- Type: bool
- Default: `False`

### Parameter: `azureSearchUseSemanticSearch`

Use semantic search.

- Required: No
- Type: bool
- Default: `False`

### Parameter: `azureSearchVectorColumn`

Vector columns.

- Required: No
- Type: string
- Default: `'content_vector'`

### Parameter: `computerVisionLocation`

Location of Computer Vision Resource (if useAdvancedImageProcessing=true).

- Required: No
- Type: string
- Default: `''`
- Allowed:
  ```Bicep
  [
    ''
    'eastus'
    'francecentral'
    'koreacentral'
    'northeurope'
    'southeastasia'
    'westeurope'
    'westus'
  ]
  ```

### Parameter: `computerVisionName`

Name of Computer Vision Resource (if useAdvancedImageProcessing=true).

- Required: No
- Type: string
- Default: `[format('computer-vision-{0}', parameters('resourceName'))]`

### Parameter: `computerVisionSkuName`

Name of Computer Vision Resource SKU (if useAdvancedImageProcessing=true).

- Required: No
- Type: string
- Default: `'S1'`
- Allowed:
  ```Bicep
  [
    'F0'
    'S1'
  ]
  ```

### Parameter: `computerVisionVectorizeImageApiVersion`

Azure Computer Vision Vectorize Image API Version.

- Required: No
- Type: string
- Default: `'2024-02-01'`

### Parameter: `computerVisionVectorizeImageModelVersion`

Azure Computer Vision Vectorize Image Model Version.

- Required: No
- Type: string
- Default: `'2023-04-15'`

### Parameter: `contentSafetyName`

Azure Content Safety Name.

- Required: No
- Type: string
- Default: `[format('contentsafety-{0}', parameters('resourceName'))]`

### Parameter: `conversationFlow`

Chat conversation type: custom or byod. If the database type is PostgreSQL, set this to custom.

- Required: No
- Type: string
- Default: `'custom'`
- Allowed:
  ```Bicep
  [
    'byod'
    'custom'
  ]
  ```

### Parameter: `enableTelemetry`

Enable/Disable usage telemetry for module.

- Required: No
- Type: bool
- Default: `True`

### Parameter: `formRecognizerName`

Azure Form Recognizer Name.

- Required: No
- Type: string
- Default: `[format('formrecog-{0}', parameters('resourceName'))]`

### Parameter: `functionName`

Name of Function App for Batch document processing.

- Required: No
- Type: string
- Default: `[format('backend-{0}', parameters('resourceName'))]`

### Parameter: `hostingModel`

Hosting model for the web apps. This value is fixed as "container", which uses prebuilt containers for faster deployment.

- Required: No
- Type: string
- Default: `'container'`

### Parameter: `hostingPlanName`

Name of App Service plan.

- Required: No
- Type: string
- Default: `[format('hosting-plan-{0}', parameters('resourceName'))]`

### Parameter: `hostingPlanSku`

The pricing tier for the App Service plan.

- Required: No
- Type: string
- Default: `'S1'`
- Allowed:
  ```Bicep
  [
    'B1'
    'B2'
    'B3'
    'D1'
    'F1'
    'P1'
    'P2'
    'P3'
    'P4'
    'S1'
    'S2'
    'S3'
  ]
  ```

### Parameter: `keyvaultname`

Name of Keyvault.

- Required: No
- Type: string
- Default: `[format('kv-{0}', parameters('resourceName'))]`

### Parameter: `location`

Location for all resources.

- Required: No
- Type: string
- Default: `[resourceGroup().location]`

### Parameter: `logAnalyticsName`

Log Analytics Name.

- Required: No
- Type: string
- Default: `[format('la-{0}', parameters('resourceName'))]`

### Parameter: `logLevel`

Log level web service.

- Required: No
- Type: string
- Default: `'INFO'`
- Allowed:
  ```Bicep
  [
    'CRITICAL'
    'DEBUG'
    'ERROR'
    'INFO'
    'WARN'
  ]
  ```

### Parameter: `newGuidString`

Guid.

- Required: No
- Type: string
- Default: `[newGuid()]`

### Parameter: `orchestrationStrategy`

Orchestration strategy: openai_function or semantic_kernel or langchain str. If you use a old version of turbo (0301), please select langchain.

- Required: No
- Type: string
- Default: `'semantic_kernel'`
- Allowed:
  ```Bicep
  [
    'langchain'
    'openai_function'
    'prompt_flow'
    'semantic_kernel'
  ]
  ```

### Parameter: `principalId`

Id of the user or app to assign application roles.

- Required: No
- Type: string
- Default: `''`

### Parameter: `recognizedLanguages`

List of comma-separated languages to recognize from the speech input. Supported languages are listed here: https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=stt#supported-languages .

- Required: No
- Type: string
- Default: `'en-US,fr-FR,de-DE,it-IT'`

### Parameter: `resourceName`

Resource Name.

- Required: No
- Type: string
- Default: `[toLower(uniqueString(subscription().id, parameters('environmentName'), parameters('location')))]`

### Parameter: `searchTag`

Search Tag.

- Required: No
- Type: string
- Default: `'chatwithyourdata-sa'`

### Parameter: `skuTier`

The sku tier for the App Service plan.

- Required: No
- Type: string
- Default: `'Standard'`
- Allowed:
  ```Bicep
  [
    'Basic'
    'Free'
    'Premium'
    'PremiumV2'
    'PremiumV3'
    'Shared'
    'Standard'
  ]
  ```

### Parameter: `speechServiceName`

Azure Speech Service Name.

- Required: No
- Type: string
- Default: `[format('speech-{0}', parameters('resourceName'))]`

### Parameter: `storageAccountName`

Name of Storage Account.

- Required: No
- Type: string
- Default: `[format('str{0}', parameters('resourceName'))]`

### Parameter: `useAdvancedImageProcessing`

Enables the use of a vision LLM and Computer Vision for embedding images.

- Required: No
- Type: bool
- Default: `False`

### Parameter: `useKeyVault`

Whether to use Key Vault to store secrets (best when using keys). If using RBAC, then please set this to false.

- Required: No
- Type: bool
- Default: `[if(equals(parameters('authType'), 'rbac'), false(), true())]`

### Parameter: `websiteName`

Name of Web App.

- Required: No
- Type: string
- Default: `[format('web-{0}', parameters('resourceName'))]`

### Parameter: `workbookDisplayName`

Name of the Workbook.

- Required: No
- Type: string
- Default: `[format('workbook-{0}', parameters('resourceName'))]`

### Parameter: `databaseType`

The type of database to deploy (cosmos or postgres).

- Required: No
- Type: string
- Default: `'PostgreSQL'`
- Allowed:
  ```Bicep
  [
    'CosmosDB'
    'PostgreSQL'
  ]
  ```

## Outputs

| Output | Type | Description |
| :-- | :-- | :-- |
| `adminWebsiteName` | string | The name of your admin website. |
| `advancedImageProcessingMaxImages` | int | The maximum number of images to be processed. |
| `applicationInsightsConnectionString` | string | The connection string of the application insights component. |
| `azureAppServiceHostingModel` | string | The app service hosting model. |
| `azureAuthType` | string | Azure Authentication Type. |
| `azureBlobStorageInfo` | string | The Blob container and storge account name. |
| `azureComputerVisionInfo` | string | The computer vision endpoint,region,key, and other information. |
| `azureContentSafetyInfo` | string | The content safety infromation. |
| `azureCosmosDBInfo` | string | The cosmos db account name. |
| `azureFormRecognizerInfo` | string | The form recognizer infromation. |
| `azureKeyVaultInfo` | string | The key vault information. |
| `azureLocation` | string | The deployment region. |
| `azureMLWorkspaceName` | string | The name of your Azure ML workspace. |
| `azureOpenAIConfigurationInfo` | string | The Open AI configuration information. |
| `azureOpenAIEmbeddingModelInfo` | string | The Open AI Embedding Model information. |
| `azureOpenAIModelInfo` | string | The Open AI model information. |
| `azurePostgresDBInfo` | string | The postgres db account name. |
| `azureResourceGroup` | string | The resource group name for the deployment. |
| `azureSearchServiceInfo` | string | The name information for your Azure AI Search resource. |
| `azureSpeechServiceInfo` | string | The information for your Azure Speech Service. |
| `azureTenantId` | string | The tenant ID. |
| `conversationFlow` | string | The name of the conversation flow. |
| `documentProcessingQueueName` | string | The name of the document processing queue. |
| `frontendWebsiteName` | string | The name of your frontend website. |
| `logLevel` | string | The log level for application insights. |
| `openAIFunctionsSystemPrompt` | string | TheOpenAI system prompt. |
| `orchestrationStrategy` | string | The strategy for Azure service orchestration. |
| `resourceGroupName` | string | The name of your resource group. |
| `resourceName` | string | The name of your resource token. |
| `semanticKernelSystemPrompt` | string | The semantic kernel system prompt. |
| `useAdvancedImageProcessing` | bool | Boolean that determines if advaced image processing is used. |
| `useKeyVault` | bool | Boolean for using the keyvault. |

## Cross-referenced modules

This section gives you an overview of all local-referenced module files (i.e., other modules that are referenced in this module) and all remote-referenced files (i.e., Bicep modules that are referenced from a Bicep Registry or Template Specs).

| Reference | Type |
| :-- | :-- |
| `br/public:avm/res/key-vault/vault:0.11.2` | Remote reference |

## Data Collection

The software may collect information about you and your use of the software and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. You may turn off the telemetry as described in the [repository](https://aka.ms/avm/telemetry). There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft’s privacy statement. Our privacy statement is located at <https://go.microsoft.com/fwlink/?LinkID=824704>. You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.
