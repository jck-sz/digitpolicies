param workspaceName string
param storageName string
param tables array

resource workspace 'Microsoft.OperationalInsights/workspaces@2023-09-01' existing = {
  name: workspaceName
}

resource storage 'Microsoft.Storage/storageAccounts@2024-01-01' existing = {
  name: storageName
}

resource symbolicname 'Microsoft.OperationalInsights/workspaces/dataExports@2023-09-01' = {
  parent: workspace
  name: 'SLZexport'
  properties: {
    destination: {
      resourceId: storage.id
    }
    enable: true
    tableNames: tables
  }
}