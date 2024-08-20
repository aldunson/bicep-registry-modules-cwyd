#  `[Ai/ChatWithYourData]`


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
| `Microsoft.Authorization/roleAssignments` | [2022-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Authorization/2022-04-01/roleAssignments) |
| `Microsoft.CognitiveServices/accounts` | [2023-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.CognitiveServices/2023-05-01/accounts) |
| `Microsoft.CognitiveServices/accounts/deployments` | [2023-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.CognitiveServices/2023-05-01/accounts/deployments) |
| `Microsoft.EventGrid/systemTopics` | [2021-12-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.EventGrid/2021-12-01/systemTopics) |
| `Microsoft.EventGrid/systemTopics/eventSubscriptions` | [2021-12-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.EventGrid/2021-12-01/systemTopics/eventSubscriptions) |
| `Microsoft.Insights/components` | [2020-02-02](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2020-02-02/components) |
| `Microsoft.Insights/workbooks` | [2023-06-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Insights/2023-06-01/workbooks) |
| `Microsoft.KeyVault/vaults` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults) |
| `Microsoft.KeyVault/vaults/accessPolicies` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults/accessPolicies) |
| `Microsoft.KeyVault/vaults/secrets` | [2022-07-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.KeyVault/2022-07-01/vaults/secrets) |
| `Microsoft.MachineLearningServices/workspaces` | [2023-06-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.MachineLearningServices/2023-06-01-preview/workspaces) |
| `Microsoft.MachineLearningServices/workspaces/connections` | [2024-01-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.MachineLearningServices/2024-01-01-preview/workspaces/connections) |
| `Microsoft.OperationalInsights/workspaces` | [2021-12-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.OperationalInsights/2021-12-01-preview/workspaces) |
| `Microsoft.Portal/dashboards` | [2020-09-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Portal/2020-09-01-preview/dashboards) |
| `Microsoft.Resources/deploymentScripts` | [2020-10-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Resources/2020-10-01/deploymentScripts) |
| `Microsoft.Resources/resourceGroups` | [2021-04-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Resources/2021-04-01/resourceGroups) |
| `Microsoft.Search/searchServices` | [2021-04-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Search/2021-04-01-preview/searchServices) |
| `Microsoft.Storage/storageAccounts` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts) |
| `Microsoft.Storage/storageAccounts/blobServices` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts/blobServices) |
| `Microsoft.Storage/storageAccounts/blobServices/containers` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts/blobServices/containers) |
| `Microsoft.Storage/storageAccounts/queueServices` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts/queueServices) |
| `Microsoft.Storage/storageAccounts/queueServices/queues` | [2022-05-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Storage/2022-05-01/storageAccounts/queueServices/queues) |
| `Microsoft.Web/serverfarms` | [2022-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/2022-03-01/serverfarms) |
| `Microsoft.Web/sites` | [2022-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/2022-03-01/sites) |
| `Microsoft.Web/sites/basicPublishingCredentialsPolicies` | [2022-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/sites) |
| `Microsoft.Web/sites/config` | [2022-03-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/sites) |
| `Microsoft.Web/sites/host/functionKeys` | [2018-11-01](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Web/sites) |

## Usage examples

The following section provides usage examples for the module, which were used to validate and deploy the module successfully. For a full reference, please review the module's test folder in its repository.

>**Note**: Each example lists all the required parameters first, followed by the rest - each in alphabetical order.

>**Note**: To reference the module, please use the following syntax `br/public:avm/ptn/ai/chat-with-your-data:<version>`.

- [Defaults](#example-1-defaults)
- [Waf-Aligned](#example-2-waf-aligned)

### Example 1: _Defaults_

<details>

<summary>via Bicep module</summary>

```bicep
module chatWithYourData 'br/public:avm/ptn/ai/chat-with-your-data:<version>' = {
  name: 'chatWithYourDataDeployment'
  params: {
    // Required parameters
    location: '<location>'
    name: 'acwyddef001'
  }
}
```

</details>
<p>

<details>

<summary>via JSON Parameter file</summary>

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    // Required parameters
    "location": {
      "value": "<location>"
    },
    "name": {
      "value": "acwyddef001"
    }
  }
}
```

</details>
<p>

### Example 2: _Waf-Aligned_

<details>

<summary>via Bicep module</summary>

```bicep
module chatWithYourData 'br/public:avm/ptn/ai/chat-with-your-data:<version>' = {
  name: 'chatWithYourDataDeployment'
  params: {
    // Required parameters
    location: '<location>'
    name: 'acwydwaf001'
  }
}
```

</details>
<p>

<details>

<summary>via JSON Parameter file</summary>

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    // Required parameters
    "location": {
      "value": "<location>"
    },
    "name": {
      "value": "acwydwaf001"
    }
  }
}
```

</details>
<p>


## Parameters

**Required parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`environmentName`](#parameter-environmentname) | string | Name of the the environment which is used to generate a short unique hash used in all resources. |
| [`location`](#parameter-location) | string | Location for all resources. |

**Optional parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`adminWebsiteName`](#parameter-adminwebsitename) | string | Name of Admin Web App |
| [`advancedImageProcessingMaxImages`](#parameter-advancedimageprocessingmaximages) | int | The maximum number of images to pass to the vision model in a single request |
| [`applicationInsightsName`](#parameter-applicationinsightsname) | string | Name of Application Insights |
| [`authType`](#parameter-authtype) | string | Whether the Azure services communicate with each other using RBAC or keys. RBAC is recommended, however some users may not have sufficient permissions to assign roles. |
| [`azureAISearchName`](#parameter-azureaisearchname) | string | Azure AI Search Resource |
| [`azureMachineLearningName`](#parameter-azuremachinelearningname) | string | Azure Machine Learning Name |
| [`azureOpenAIApiVersion`](#parameter-azureopenaiapiversion) | string | Azure OpenAI Api Version |
| [`azureOpenAIEmbeddingModel`](#parameter-azureopenaiembeddingmodel) | string | Azure OpenAI Embedding Model Deployment Name |
| [`azureOpenAIEmbeddingModelCapacity`](#parameter-azureopenaiembeddingmodelcapacity) | int | Azure OpenAI Embedding Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota |
| [`azureOpenAIEmbeddingModelName`](#parameter-azureopenaiembeddingmodelname) | string | Azure OpenAI Embedding Model Name |
| [`azureOpenAIEmbeddingModelVersion`](#parameter-azureopenaiembeddingmodelversion) | string | Azure OpenAI Embedding Model Version |
| [`azureOpenAIMaxTokens`](#parameter-azureopenaimaxtokens) | string | Azure OpenAI Max Tokens |
| [`azureOpenAIModel`](#parameter-azureopenaimodel) | string | Azure OpenAI Model Deployment Name |
| [`azureOpenAIModelCapacity`](#parameter-azureopenaimodelcapacity) | int | Azure OpenAI Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota |
| [`azureOpenAIModelName`](#parameter-azureopenaimodelname) | string | Azure OpenAI Model Name |
| [`azureOpenAIModelVersion`](#parameter-azureopenaimodelversion) | string | Azure OpenAI Model Version |
| [`azureOpenAIResourceName`](#parameter-azureopenairesourcename) | string | Name of Azure OpenAI Resource |
| [`azureOpenAISkuName`](#parameter-azureopenaiskuname) | string | Name of Azure OpenAI Resource SKU |
| [`azureOpenAIStopSequence`](#parameter-azureopenaistopsequence) | string | Azure OpenAI Stop Sequence |
| [`azureOpenAIStream`](#parameter-azureopenaistream) | string | Whether or not to stream responses from Azure OpenAI |
| [`azureOpenAISystemMessage`](#parameter-azureopenaisystemmessage) | string | Azure OpenAI System Message |
| [`azureOpenAITemperature`](#parameter-azureopenaitemperature) | string | Azure OpenAI Temperature |
| [`azureOpenAITopP`](#parameter-azureopenaitopp) | string | Azure OpenAI Top P |
| [`azureOpenAIVisionModel`](#parameter-azureopenaivisionmodel) | string | Azure OpenAI Vision Model Deployment Name |
| [`azureOpenAIVisionModelCapacity`](#parameter-azureopenaivisionmodelcapacity) | int | Azure OpenAI Vision Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota |
| [`azureOpenAIVisionModelName`](#parameter-azureopenaivisionmodelname) | string | Azure OpenAI Vision Model Name |
| [`azureOpenAIVisionModelVersion`](#parameter-azureopenaivisionmodelversion) | string | Azure OpenAI Vision Model Version |
| [`azureSearchContentColumns`](#parameter-azuresearchcontentcolumns) | string | Content columns |
| [`azureSearchConversationLogIndex`](#parameter-azuresearchconversationlogindex) | string | Azure AI Search Conversation Log Index |
| [`azureSearchDatasource`](#parameter-azuresearchdatasource) | string | Azure AI Search Datasource |
| [`azureSearchEnableInDomain`](#parameter-azuresearchenableindomain) | string | Enable in domain |
| [`azureSearchFilenameColumn`](#parameter-azuresearchfilenamecolumn) | string | Filename column |
| [`azureSearchFilter`](#parameter-azuresearchfilter) | string | Search filter |
| [`azureSearchIndex`](#parameter-azuresearchindex) | string | Azure AI Search Index |
| [`azureSearchIndexer`](#parameter-azuresearchindexer) | string | Azure AI Search Indexer |
| [`azureSearchIndexIsPrechunked`](#parameter-azuresearchindexisprechunked) | string | Is the index prechunked |
| [`azureSearchSemanticSearchConfig`](#parameter-azuresearchsemanticsearchconfig) | string | Semantic search config |
| [`azureSearchSku`](#parameter-azuresearchsku) | string | The SKU of the search service you want to create. E.g. free or standard |
| [`azureSearchTitleColumn`](#parameter-azuresearchtitlecolumn) | string | Title column |
| [`azureSearchTopK`](#parameter-azuresearchtopk) | string | Top K results |
| [`azureSearchUrlColumn`](#parameter-azuresearchurlcolumn) | string | Url column |
| [`azureSearchUseIntegratedVectorization`](#parameter-azuresearchuseintegratedvectorization) | bool | Use Azure Search Integrated Vectorization |
| [`azureSearchUseSemanticSearch`](#parameter-azuresearchusesemanticsearch) | bool | Use semantic search |
| [`azureSearchVectorColumns`](#parameter-azuresearchvectorcolumns) | string | Vector columns |
| [`computerVisionLocation`](#parameter-computervisionlocation) | string | Location of Computer Vision Resource (if useAdvancedImageProcessing=true) |
| [`computerVisionName`](#parameter-computervisionname) | string | Name of Computer Vision Resource (if useAdvancedImageProcessing=true) |
| [`computerVisionSkuName`](#parameter-computervisionskuname) | string | Name of Computer Vision Resource SKU (if useAdvancedImageProcessing=true) |
| [`computerVisionVectorizeImageApiVersion`](#parameter-computervisionvectorizeimageapiversion) | string | Azure Computer Vision Vectorize Image API Version |
| [`computerVisionVectorizeImageModelVersion`](#parameter-computervisionvectorizeimagemodelversion) | string | Azure Computer Vision Vectorize Image Model Version |
| [`contentSafetyName`](#parameter-contentsafetyname) | string | Azure Content Safety Name |
| [`conversationFlow`](#parameter-conversationflow) | string | Chat conversation type: custom or byod. |
| [`formRecognizerName`](#parameter-formrecognizername) | string | Azure Form Recognizer Name |
| [`functionName`](#parameter-functionname) | string | Name of Function App for Batch document processing |
| [`hostingModel`](#parameter-hostingmodel) | string | Hosting model for the web apps. Containers are prebuilt and can be deployed faster, but code allows for more customization. |
| [`hostingPlanName`](#parameter-hostingplanname) | string | Name of App Service plan |
| [`hostingPlanSku`](#parameter-hostingplansku) | string | The pricing tier for the App Service plan |
| [`logAnalyticsName`](#parameter-loganalyticsname) | string | Log Analytics Name |
| [`newGuidString`](#parameter-newguidstring) | string | Guid |
| [`orchestrationStrategy`](#parameter-orchestrationstrategy) | string | Orchestration strategy: openai_function or semantic_kernel or langchain str. If you use a old version of turbo (0301), please select langchain |
| [`principalId`](#parameter-principalid) | string | Id of the user or app to assign application roles |
| [`recognizedLanguages`](#parameter-recognizedlanguages) | string | List of comma-separated languages to recognize from the speech input. Supported languages are listed here: https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=stt#supported-languages |
| [`searchTag`](#parameter-searchtag) | string | Search Tag. |
| [`skuTier`](#parameter-skutier) | string | The sku tier for the App Service plan |
| [`speechServiceName`](#parameter-speechservicename) | string | Azure Speech Service Name |
| [`storageAccountName`](#parameter-storageaccountname) | string | Name of Storage Account |
| [`useAdvancedImageProcessing`](#parameter-useadvancedimageprocessing) | bool | Enables the use of a vision LLM and Computer Vision for embedding images |
| [`useKeyVault`](#parameter-usekeyvault) | bool | Whether to use Key Vault to store secrets (best when using keys). If using RBAC, then please set this to false. |
| [`websiteName`](#parameter-websitename) | string | Name of Web App |
| [`workbookDisplayName`](#parameter-workbookdisplayname) | string | Name of the Workbook |

### Parameter: `environmentName`

Name of the the environment which is used to generate a short unique hash used in all resources.

- Required: Yes
- Type: string

### Parameter: `location`

Location for all resources.

- Required: Yes
- Type: string

### Parameter: `adminWebsiteName`

Name of Admin Web App

- Required: No
- Type: string
- Default: `[format('{0}-admin', parameters('websiteName'))]`

### Parameter: `advancedImageProcessingMaxImages`

The maximum number of images to pass to the vision model in a single request

- Required: No
- Type: int
- Default: `1`

### Parameter: `applicationInsightsName`

Name of Application Insights

- Required: No
- Type: string
- Default: `[format('appinsights-{0}', parameters('resourceToken'))]`

### Parameter: `authType`

Whether the Azure services communicate with each other using RBAC or keys. RBAC is recommended, however some users may not have sufficient permissions to assign roles.

- Required: No
- Type: string
- Default: `'keys'`
- Allowed:
  ```Bicep
  [
    'keys'
    'rbac'
  ]
  ```

### Parameter: `azureAISearchName`

Azure AI Search Resource

- Required: No
- Type: string
- Default: `[format('search-{0}', parameters('resourceToken'))]`

### Parameter: `azureMachineLearningName`

Azure Machine Learning Name

- Required: No
- Type: string
- Default: `[format('aml-{0}', parameters('resourceToken'))]`

### Parameter: `azureOpenAIApiVersion`

Azure OpenAI Api Version

- Required: No
- Type: string
- Default: `'2024-02-01'`

### Parameter: `azureOpenAIEmbeddingModel`

Azure OpenAI Embedding Model Deployment Name

- Required: No
- Type: string
- Default: `'text-embedding-ada-002'`

### Parameter: `azureOpenAIEmbeddingModelCapacity`

Azure OpenAI Embedding Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota

- Required: No
- Type: int
- Default: `30`

### Parameter: `azureOpenAIEmbeddingModelName`

Azure OpenAI Embedding Model Name

- Required: No
- Type: string
- Default: `'text-embedding-ada-002'`

### Parameter: `azureOpenAIEmbeddingModelVersion`

Azure OpenAI Embedding Model Version

- Required: No
- Type: string
- Default: `'2'`

### Parameter: `azureOpenAIMaxTokens`

Azure OpenAI Max Tokens

- Required: No
- Type: string
- Default: `'1000'`

### Parameter: `azureOpenAIModel`

Azure OpenAI Model Deployment Name

- Required: No
- Type: string
- Default: `'gpt-35-turbo-16k'`

### Parameter: `azureOpenAIModelCapacity`

Azure OpenAI Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota

- Required: No
- Type: int
- Default: `30`

### Parameter: `azureOpenAIModelName`

Azure OpenAI Model Name

- Required: No
- Type: string
- Default: `'gpt-35-turbo-16k'`

### Parameter: `azureOpenAIModelVersion`

Azure OpenAI Model Version

- Required: No
- Type: string
- Default: `'0613'`

### Parameter: `azureOpenAIResourceName`

Name of Azure OpenAI Resource

- Required: No
- Type: string
- Default: `[format('openai-{0}', parameters('resourceToken'))]`

### Parameter: `azureOpenAISkuName`

Name of Azure OpenAI Resource SKU

- Required: No
- Type: string
- Default: `'S0'`

### Parameter: `azureOpenAIStopSequence`

Azure OpenAI Stop Sequence

- Required: No
- Type: string
- Default: `''`

### Parameter: `azureOpenAIStream`

Whether or not to stream responses from Azure OpenAI

- Required: No
- Type: string
- Default: `'true'`

### Parameter: `azureOpenAISystemMessage`

Azure OpenAI System Message

- Required: No
- Type: string
- Default: `'You are an AI assistant that helps people find information.'`

### Parameter: `azureOpenAITemperature`

Azure OpenAI Temperature

- Required: No
- Type: string
- Default: `'0'`

### Parameter: `azureOpenAITopP`

Azure OpenAI Top P

- Required: No
- Type: string
- Default: `'1'`

### Parameter: `azureOpenAIVisionModel`

Azure OpenAI Vision Model Deployment Name

- Required: No
- Type: string
- Default: `'gpt-4'`

### Parameter: `azureOpenAIVisionModelCapacity`

Azure OpenAI Vision Model Capacity - See here for more info  https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/quota

- Required: No
- Type: int
- Default: `10`

### Parameter: `azureOpenAIVisionModelName`

Azure OpenAI Vision Model Name

- Required: No
- Type: string
- Default: `'gpt-4'`

### Parameter: `azureOpenAIVisionModelVersion`

Azure OpenAI Vision Model Version

- Required: No
- Type: string
- Default: `'vision-preview'`

### Parameter: `azureSearchContentColumns`

Content columns

- Required: No
- Type: string
- Default: `'content'`

### Parameter: `azureSearchConversationLogIndex`

Azure AI Search Conversation Log Index

- Required: No
- Type: string
- Default: `'conversations'`

### Parameter: `azureSearchDatasource`

Azure AI Search Datasource

- Required: No
- Type: string
- Default: `[format('datasource-{0}', parameters('resourceToken'))]`

### Parameter: `azureSearchEnableInDomain`

Enable in domain

- Required: No
- Type: string
- Default: `'false'`

### Parameter: `azureSearchFilenameColumn`

Filename column

- Required: No
- Type: string
- Default: `'filename'`

### Parameter: `azureSearchFilter`

Search filter

- Required: No
- Type: string
- Default: `''`

### Parameter: `azureSearchIndex`

Azure AI Search Index

- Required: No
- Type: string
- Default: `[format('index-{0}', parameters('resourceToken'))]`

### Parameter: `azureSearchIndexer`

Azure AI Search Indexer

- Required: No
- Type: string
- Default: `[format('indexer-{0}', parameters('resourceToken'))]`

### Parameter: `azureSearchIndexIsPrechunked`

Is the index prechunked

- Required: No
- Type: string
- Default: `'false'`

### Parameter: `azureSearchSemanticSearchConfig`

Semantic search config

- Required: No
- Type: string
- Default: `'default'`

### Parameter: `azureSearchSku`

The SKU of the search service you want to create. E.g. free or standard

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

### Parameter: `azureSearchTitleColumn`

Title column

- Required: No
- Type: string
- Default: `'title'`

### Parameter: `azureSearchTopK`

Top K results

- Required: No
- Type: string
- Default: `'5'`

### Parameter: `azureSearchUrlColumn`

Url column

- Required: No
- Type: string
- Default: `'url'`

### Parameter: `azureSearchUseIntegratedVectorization`

Use Azure Search Integrated Vectorization

- Required: No
- Type: bool
- Default: `False`

### Parameter: `azureSearchUseSemanticSearch`

Use semantic search

- Required: No
- Type: bool
- Default: `False`

### Parameter: `azureSearchVectorColumns`

Vector columns

- Required: No
- Type: string
- Default: `'content_vector'`

### Parameter: `computerVisionLocation`

Location of Computer Vision Resource (if useAdvancedImageProcessing=true)

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

Name of Computer Vision Resource (if useAdvancedImageProcessing=true)

- Required: No
- Type: string
- Default: `[format('computer-vision-{0}', parameters('resourceToken'))]`

### Parameter: `computerVisionSkuName`

Name of Computer Vision Resource SKU (if useAdvancedImageProcessing=true)

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

Azure Computer Vision Vectorize Image API Version

- Required: No
- Type: string
- Default: `'2024-02-01'`

### Parameter: `computerVisionVectorizeImageModelVersion`

Azure Computer Vision Vectorize Image Model Version

- Required: No
- Type: string
- Default: `'2023-04-15'`

### Parameter: `contentSafetyName`

Azure Content Safety Name

- Required: No
- Type: string
- Default: `[format('contentsafety-{0}', parameters('resourceToken'))]`

### Parameter: `conversationFlow`

Chat conversation type: custom or byod.

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

### Parameter: `formRecognizerName`

Azure Form Recognizer Name

- Required: No
- Type: string
- Default: `[format('formrecog-{0}', parameters('resourceToken'))]`

### Parameter: `functionName`

Name of Function App for Batch document processing

- Required: No
- Type: string
- Default: `[format('backend-{0}', parameters('resourceToken'))]`

### Parameter: `hostingModel`

Hosting model for the web apps. Containers are prebuilt and can be deployed faster, but code allows for more customization.

- Required: No
- Type: string
- Default: `'container'`
- Allowed:
  ```Bicep
  [
    'code'
    'container'
  ]
  ```

### Parameter: `hostingPlanName`

Name of App Service plan

- Required: No
- Type: string
- Default: `[format('hosting-plan-{0}', parameters('resourceToken'))]`

### Parameter: `hostingPlanSku`

The pricing tier for the App Service plan

- Required: No
- Type: string
- Default: `'B3'`
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

### Parameter: `logAnalyticsName`

Log Analytics Name

- Required: No
- Type: string
- Default: `[format('la-{0}', parameters('resourceToken'))]`

### Parameter: `newGuidString`

Guid

- Required: No
- Type: string
- Default: `[newGuid()]`

### Parameter: `orchestrationStrategy`

Orchestration strategy: openai_function or semantic_kernel or langchain str. If you use a old version of turbo (0301), please select langchain

- Required: No
- Type: string
- Default: `'openai_function'`
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

Id of the user or app to assign application roles

- Required: No
- Type: string
- Default: `''`

### Parameter: `recognizedLanguages`

List of comma-separated languages to recognize from the speech input. Supported languages are listed here: https://learn.microsoft.com/en-us/azure/ai-services/speech-service/language-support?tabs=stt#supported-languages

- Required: No
- Type: string
- Default: `'en-US,fr-FR,de-DE,it-IT'`

### Parameter: `searchTag`

Search Tag.

- Required: No
- Type: string
- Default: `'chatwithyourdata-sa'`

### Parameter: `skuTier`

The sku tier for the App Service plan

- Required: No
- Type: string
- Default: `'Basic'`
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

Azure Speech Service Name

- Required: No
- Type: string
- Default: `[format('speech-{0}', parameters('resourceToken'))]`

### Parameter: `storageAccountName`

Name of Storage Account

- Required: No
- Type: string
- Default: `[format('str{0}', parameters('resourceToken'))]`

### Parameter: `useAdvancedImageProcessing`

Enables the use of a vision LLM and Computer Vision for embedding images

- Required: No
- Type: bool
- Default: `False`

### Parameter: `useKeyVault`

Whether to use Key Vault to store secrets (best when using keys). If using RBAC, then please set this to false.

- Required: No
- Type: bool
- Default: `[if(equals(parameters('authType'), 'rbac'), false(), true())]`

### Parameter: `websiteName`

Name of Web App

- Required: No
- Type: string
- Default: `[format('web-{0}', parameters('resourceToken'))]`

### Parameter: `workbookDisplayName`

Name of the Workbook

- Required: No
- Type: string
- Default: `[format('workbook-{0}', parameters('resourceToken'))]`


## Outputs

| Output | Type |
| :-- | :-- |
| `ADMIN_WEBSITE_NAME` | string |
| `ADVANCED_IMAGE_PROCESSING_MAX_IMAGES` | int |
| `APPLICATIONINSIGHTS_CONNECTION_STRING` | string |
| `AZURE_APP_SERVICE_HOSTING_MODEL` | string |
| `AZURE_BLOB_ACCOUNT_KEY` | string |
| `AZURE_BLOB_ACCOUNT_NAME` | string |
| `AZURE_BLOB_CONTAINER_NAME` | string |
| `AZURE_COMPUTER_VISION_ENDPOINT` | string |
| `AZURE_COMPUTER_VISION_KEY` | string |
| `AZURE_COMPUTER_VISION_LOCATION` | string |
| `AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_API_VERSION` | string |
| `AZURE_COMPUTER_VISION_VECTORIZE_IMAGE_MODEL_VERSION` | string |
| `AZURE_CONTENT_SAFETY_ENDPOINT` | string |
| `AZURE_CONTENT_SAFETY_KEY` | string |
| `AZURE_FORM_RECOGNIZER_ENDPOINT` | string |
| `AZURE_FORM_RECOGNIZER_KEY` | string |
| `AZURE_KEY_VAULT_ENDPOINT` | string |
| `AZURE_KEY_VAULT_NAME` | string |
| `AZURE_LOCATION` | string |
| `AZURE_ML_WORKSPACE_NAME` | string |
| `AZURE_OPENAI_API_KEY` | string |
| `AZURE_OPENAI_API_VERSION` | string |
| `AZURE_OPENAI_EMBEDDING_MODEL_NAME` | string |
| `AZURE_OPENAI_EMBEDDING_MODEL_VERSION` | string |
| `AZURE_OPENAI_MAX_TOKENS` | string |
| `AZURE_OPENAI_MODEL_NAME` | string |
| `AZURE_OPENAI_MODEL_VERSION` | string |
| `AZURE_OPENAI_RESOURCE` | string |
| `AZURE_OPENAI_STOP_SEQUENCE` | string |
| `AZURE_OPENAI_STREAM` | string |
| `AZURE_OPENAI_SYSTEM_MESSAGE` | string |
| `AZURE_OPENAI_TEMPERATURE` | string |
| `AZURE_OPENAI_TOP_P` | string |
| `AZURE_RESOURCE_GROUP` | string |
| `AZURE_SEARCH_CONTENT_COLUMNS` | string |
| `AZURE_SEARCH_CONTENT_VECTOR_COLUMNS` | string |
| `AZURE_SEARCH_DATASOURCE_NAME` | string |
| `AZURE_SEARCH_ENABLE_IN_DOMAIN` | string |
| `AZURE_SEARCH_FILENAME_COLUMN` | string |
| `AZURE_SEARCH_FILTER` | string |
| `AZURE_SEARCH_INDEX` | string |
| `AZURE_SEARCH_INDEX_IS_PRECHUNKED` | string |
| `AZURE_SEARCH_INDEXER_NAME` | string |
| `AZURE_SEARCH_KEY` | string |
| `AZURE_SEARCH_SEMANTIC_SEARCH_CONFIG` | string |
| `AZURE_SEARCH_SERVICE` | string |
| `AZURE_SEARCH_TITLE_COLUMN` | string |
| `AZURE_SEARCH_TOP_K` | string |
| `AZURE_SEARCH_URL_COLUMN` | string |
| `AZURE_SEARCH_USE_INTEGRATED_VECTORIZATION` | bool |
| `AZURE_SEARCH_USE_SEMANTIC_SEARCH` | bool |
| `AZURE_SPEECH_RECOGNIZER_LANGUAGES` | string |
| `AZURE_SPEECH_SERVICE_KEY` | string |
| `AZURE_SPEECH_SERVICE_NAME` | string |
| `AZURE_SPEECH_SERVICE_REGION` | string |
| `AZURE_TENANT_ID` | string |
| `CONVERSATION_FLOW` | string |
| `DOCUMENT_PROCESSING_QUEUE_NAME` | string |
| `FRONTEND_WEBSITE_NAME` | string |
| `LOGLEVEL` | string |
| `ORCHESTRATION_STRATEGY` | string |
| `RESOURCE_TOKEN` | string |
| `USE_ADVANCED_IMAGE_PROCESSING` | bool |
| `USE_KEY_VAULT` | bool |

## Cross-referenced modules

_None_

## Data Collection

The software may collect information about you and your use of the software and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. You may turn off the telemetry as described in the [repository](https://aka.ms/avm/telemetry). There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft’s privacy statement. Our privacy statement is located at <https://go.microsoft.com/fwlink/?LinkID=824704>. You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.
