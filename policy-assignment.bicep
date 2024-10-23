param policyAssignmentName string = 'audit-vm-managed-disks'
param policyDefinitionID string = '/providers/Microsoft.Authorization/policyDefinitions/06a78e20-9358-41c9-923c-fb736d382a4d'
param policyDisplayName string = 'Audit VM managed disks'

resource assignment 'Microsoft.Authorization/policyAssignments@2023-04-01' = {
  name: policyAssignmentName
  scope: resourceGroup()
  properties: {
    policyDefinitionId: policyDefinitionID
    description: 'Policy assignment to resource group scope created with Bicep file'
    displayName: policyDisplayName
    nonComplianceMessages: [
      {
        message: 'Virtual machines should use managed disks'
      }
    ]
  }
}

output assignmentId string = assignment.id
