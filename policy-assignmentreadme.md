# Policy Assignment to Identify Non-Compliant Resources Using a Bicep File

This guide demonstrates how to create a policy assignment that validates resources for compliance using Azure Policy and a Bicep file. 🦾
## Prerequisites

- Azure CLI installed
- Bicep CLI installed
- Appropriate permissions to assign policies in your Azure subscription
- Make sure **Microsoft.PolicyInsights** is registered in your subscription. [Register a resource provider.](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-providers-and-types)

## Steps

### 1. Create the Bicep File

Open visual studio code or any other editor and create a new file named `policyAssignment.bicep`. Add the following code to the file:

```bicep
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
```
## Explanation of Parameters
- `policyAssignmentName`: creates the assignment name which is audit-vm-managed-disks. 
- `policyDefinitionID`: specifies the policy definition ID.
- `policyDisplayName`: creates the display name that you will see in the Azure portal.


### 2. Deploy the Bicep File

- If you have the Bicep Extenion for Visual Studio code installed, you can use that to deploy the Bicep file. OR

- You can deploy the Bicep file with Azure Powershell or Azure CLI. From a visual studio code terminal, run the following command to connect to your subscription. Don't forget to replace `<subscription-id>` with your subscription ID.

```sh
Connect-AzAccount

# Run these commands if you have multiple subscriptions
Get-AzSubScription
Set-AzContext -Subscription <subscriptionID>
```

The following commands display the policyDefinitionID parameters value:

```sh
(Get-AzPolicyDefinition |
  Where-Object { $_.Properties.DisplayName -eq 'Audit VMs that do not use managed disks' }).ResourceId
```
The next command deploys the policy definition to your resource group:

```sh
$rg = Get-AzResourceGroup -Name '<resourceGroupName>'

$deployparms = @{
Name = 'PolicyDeployment'
ResourceGroupName = $rg.ResourceGroupName
TemplateFile = 'policy-assignment.bicep'
}

New-AzResourceGroupDeployment @deployparms
```

## Explanation of the Commands
- The $rg variable stores properties of the resource group.
- The #deployparms variable stores the deployment parameters.
- The New-AzResourceGroupDeployment command uses the parameter values defined in the $deployparms variable to deploy the Bicep file.
- The Name is disaplyed in the output in Azure for the deployment.
- The ResourceGroupName uses the $rg.ResourceGroupName variable to specify the resource group.
- The TemplateFile specifies the Bicep file to deploy from your local machine.

### 3. Verify the Assignment

To verify the policy assignment, use the Azure CLI:

```sh
Get-AzPolicyAssignment -Name 'audit-vm-managed-disks' -Scope $rg.ResourceId
```

This command lists all policy assignments within the specified scope.

## Conclusion

By following these steps, you can create a policy assignment to identify non-compliant resources using a Bicep file.
