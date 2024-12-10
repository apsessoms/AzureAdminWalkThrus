# Understanding System Assigned Identity vs Managed Identity in Azure 🔑

## Introduction
Azure provides two types of managed identities for Azure resources: **System Assigned Identity** and **User Assigned Identity**. This guide will help you understand the differences between these two types of identities.

## System Assigned Identity 💻
A System Assigned Identity is an identity created for a specific Azure resource. The lifecycle of this identity is tied to the lifecycle of the resource and it can only be used for one resource. When the resource is deleted, the identity is also deleted.

### Key Characteristics:
- **Lifecycle**: Tied to the Azure resource.
- **Scope**: Only one identity per resource.
- **Management**: Automatically managed by Azure which eliminates the need for storing secrets and certificates.

### Use Case:
- Ideal for scenarios where the identity is only needed for the lifespan of the resource.

## User Assigned Identity 🖥📱💻
A User Assigned Identity is an independent Azure resource that can be assigned to one or more Azure resources. The lifecycle of this identity is independent of the resources it is assigned to.

### Key Characteristics:
- **Lifecycle**: Independent of any specific Azure resource.
- **Scope**: Can be assigned to multiple resources.
- **Management**: Managed separately from the resources.

### Use Case:
- Suitable for scenarios where the same identity needs to be shared across multiple resources. For example, multiple virtual machines accessing the same Azure Key Vault.

## Comparison Table

| Feature                  | System Assigned Identity | User Assigned Identity |
|--------------------------|--------------------------|------------------------|
| Lifecycle                | Tied to the resource     | Independent            |
| Number of Identities     | One per resource         | Multiple resources can share one identity |
| Management               | Automatic                | Manual                 |
| Use Case                 | Single resource          | Multiple resources     |

## How to create a system assigned identity 
   - Navigate to the Azure resource for which you want to enable system-assigned identity.
   - In the left-hand menu, select `Security`.
   - Under `System assigned`, switch the status to `On`.
   - The object principal ID is a unique identifier for this resource. It can also be referred to as an object identifier.
   - 
 ![image](https://github.com/user-attachments/assets/255100d9-8e2b-45ac-8e31-334d5203137c)


That's it! The system-assigned identity is now enabled for your Azure resource.

## How to create a user assigned identity
- In the Azure portal, search for `Managed Identities`.
- Click on `Create` to create a new managed identity.
- Place the managed identity in the appropriate resource group.
- Give it a name and click on `Review + Create`.

![image](https://github.com/user-attachments/assets/460a2651-fd70-4150-b656-12686eb9fc83)

- Navigate to the Azure resource for which you want to assign a user-assigned identity.
- In the left-hand menu, select `Identity`.
- Under `User assigned`, click on `Add`.
- Type in the name of the user-assigned identity you created earlier and it should appear in the list. Select it and click `Save`.

![image](https://github.com/user-attachments/assets/c6708cc1-cf9d-4eda-92b4-87f4089499c0)


That's it! The user-assigned identity is now assigned to your Azure resource.

## Conclusion
Understanding the differences between System Assigned Identity and User Assigned Identity is crucial for effectively managing identities in Azure. Choose the type of identity that best fits your resource management and security needs.
## 🎯 Key Takeaways

- **System Assigned Identity**: Best for single resource scenarios where the identity lifecycle should match the resource.
- **User Assigned Identity**: Ideal for scenarios requiring a shared identity across multiple resources.

## 📚 Further Reading

- [Azure Managed Identities Documentation](https://docs.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview)
- [Best Practices for Managed Identities](https://docs.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/best-practices)


## 🔗 Related Links

- [Azure Identity Management](https://azure.microsoft.com/en-us/services/active-directory/)
- [Azure Resource Management](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/overview)

## 📅 Stay Updated

Subscribe to the [Azure Updates](https://azure.microsoft.com/en-us/updates/) to stay informed about the latest features and improvements.
