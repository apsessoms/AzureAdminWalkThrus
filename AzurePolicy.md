## Managing Resources via Azure Policy 📃

Azure Policy is a service in Azure that allows you to create, assign, and manage policies to enforce compliance with organizational standards and regulations. With Azure Policy, you can define rules and constraints that govern the configuration and behavior of resources in your Azure environment.

## Assign tags via Powershell (Within Azure Portal) shell
+ In the Azure portal, start a PowerShell session within the Cloud Shell.
+ (If this is the first time you are starting Cloud Shell and you are presented with the You have no storage mounted message, select the subscription you are using in this lab, and click Create storage.)
+ Run this command to identify the name of the storage account used by Cloud Shell:
```
df
```
Take note of the output of the command and where the Cloud Shell is mounted. 
![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/8d43e8ea-d2e5-4e5a-a24e-e3bc7a978c92)



+ In the Azure Portal search bar, type Storage Accounts and navigate to the list of accounts. 
+ Click on the storage account that you identified or created in the previous step. 
+ On the storage account blade, click the link representing the name of the resource group containing the storage account.
+ On the resource group blade, click Tags in the left menu and create a new tag.

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/28fa6c72-d977-4f7d-b2e8-33d1667fe433)

+ Create a tag with the following name & value pair:
    + Name: **Role**
    + Value: **Infra**

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/cbeb9c3b-2d1f-4d30-a264-ce4c181815bd)


+ Apply your changes and close the tag edition window. Navigate back to the storage account & click on the ellipsis on the storage account and select Edit tags to note that the new tag was not automatically assigned to the storage account.

## Enforce tagging via Azure Policy 🚧

In this step, we will assign the built-in Require a tag and its value on resources policy to the resource group and evaluate the outcome.

1. Open the Azure portal and navigate to the Azure Policy service.
2. Click on "Definitions" in the left-hand menu.
3. Click on "Create policy definition" to start creating a new policy. 
4. Provide a name and description for the policy.
5. Click on the entry representing the Require a tag and its value on the resources built-in policy. 
6. Configure any parameters or additional settings for the policy.
7. Click on "Review + create" to review the policy definition.
8. Click on "Create" to create the policy.

## Assigning a Policy

Once you have created a policy, you can assign it to a scope in your Azure environment. To assign a policy, follow these steps:

1. Open the Azure portal and navigate to the Azure Policy service.
2. Click on "Assignments" in the left-hand menu.
3. Click on "Assign policy" to start assigning a new policy.
4. Select the scope at which you want to assign the policy (e.g., subscription, resource group, or resource).
5. Select the policy definition that you want to assign.
6. Configure any parameters or additional settings for the policy assignment.
7. Click on "Review + create" to review the policy assignment.
8. Click on "Create" to assign the policy.

## Test your Policy
Now that you have created the policy, lets see it in real time.

1. Create a storage account and fill in the basic paramters
2. Once you get to the Tags page, you should see a policy validation error like this:

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/be5bcd66-9abd-4c97-965f-c71c07451fd3)


+ The validation will fail and the user will not be able to create the storage account until they fill out the required information.
+ This is a great way for organizations to implement compliance tenant wide. 

### Managing Policy Compliance

Once policies are assigned, Azure Policy continuously evaluates resources in your Azure environment for compliance. You can monitor and manage policy compliance using the Azure portal, Azure PowerShell, Azure CLI, or the Azure Policy REST API.

To view policy compliance in the Azure portal, follow these steps:

1. Open the Azure portal and navigate to the Azure Policy service.
2. Click on "Compliance" in the left-hand menu.
3. Select the scope for which you want to view policy compliance (e.g., subscription, resource group, or resource).
4. Review the compliance status of resources and policy assignments.

### Conclusion

Azure Policy provides a powerful mechanism for managing resources and enforcing compliance in your Azure environment. By creating and assigning policies, you can ensure that resources adhere to organizational standards and regulations.

