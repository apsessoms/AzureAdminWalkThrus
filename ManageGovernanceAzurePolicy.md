# Manage Governance via Azure Policy 📄

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Manage Governance via Azure Policy](#Manage-Governance-via-Azure-Policy)
- [NIST SP 800-53 Rev. 5 Overview](#NIST-SP-800-53-Rev-5-Overview)
- [Enforce NIST](#Enforcing-NIST-Compliance)
- [Monitoring and Compliance](#Monitoring-and-Compliance)
- [Maintenance and Updates](#Maintenance-and-Updates)
- [Conclusion](#Conclusion)
- [References](#References)

## Introduction

Azure Policy allows you to define and enforce rules and regulations to ensure compliance, security, and best practices. By using Azure Policy, you can manage governance across your Azure environment by creating policies that enforce specific requirements, such as resource tagging, network security, and VM configurations. Many government and industry regulations require organizations to implement governance controls to protect sensitive data and ensure compliance with legal requirements. This will help your organization ensure that security and compliance requirements are met consistently across all Azure resources.

## Prerequisites
Before you begin, ensure you have the following:

- An active Azure subscription.
- Azure Policy Contributor or Owner role.
- Basic understanding of Azure and NIST SP 800-53 Rev. 5 framework.

## Manage Governance via Azure Policy

As organizations cloud footprints grow, it be shocking to discover a large number of resources that do not have defined owners, projects, or cost center. In order to improve management of these resources, we can implement the following functionality:
    + Apply resource tags to attach metadata to resources
    + enforce the use of resource tags for new resources
    + update existing resources with resource tags
    + use resource locks to protect configured resources 

## NIST SP 800-53 Rev. 5 Overview
NIST SP 800-53 Rev. 5 provides a catalog of security and privacy controls for federal information systems and organizations. It aims to protect organizational operations, assets, and individuals from a diverse set of threats.

## Enforce NIST SP 800-53 rev 5 via an Azure Policy

In this example, you will enforce the NIST SP 800-53 rev 5 policy on a resource group.

1. In the portal, search and select **'policy'**.
2. Select **'Definitions'** and click on **'Assign Policy'**.
3. Select NIST SP 800-53 rev 5 from the list of policies & take a moment to review the policy definition. These policies are based on the **NIST SP 800-53 rev 5** control framework and are required for compliance with many government regulations.
4. Click on **'Assign initiative'** and select the scope of the policy assignment. You can assign the policy to a **management group, subscription, resource group, or individual resource**.
5. The Assignment name is automatically populated with the policy name you selected, but you can change it.
6. Click on the **remediation** tab. By default, the policy is assigned to all existing and future resources. You can change this to apply only to new resources. 
7. Leave the managed identity checkbox unchecked. You can have a system or a user-assigned managed identity to remediate resources. 
    - **System-assigned** managed identity is created and managed by Azure.
    - **User-assigned** managed identity is created and managed by you.
8. Choose your region and click **'review + create'.**

![image](https://github.com/user-attachments/assets/18cdcb25-1dcc-4aec-9d60-7d9e6b863e23)


9. You should see a message from the notification center that the policy has been assigned successfully and the Role assignment is in progress. The role assignment is the process of applying the policy to the resources in the scope you selected.
10. Verify that the policy is being enforced by checking the compliance status of the resources in the assigned scope.

## Monitoring and Compliance
1. **Compliance Dashboard:**

    - Azure Policy provides a compliance dashboard where you can see the compliance state of your resources.
    - Navigate to "Compliance" in the Azure Policy section to view the overall compliance status.

![image](https://github.com/user-attachments/assets/322edb02-834b-480d-8c0d-26ffe3c54c6e)


2. **Alerts and Remediation:**

    - Set up alerts for non-compliant resources.
    - Use remediation tasks to automatically bring resources into compliance.

## Maintenance and Updates

Regularly review and update policies to ensure they align with the latest NIST guidelines and organizational requirements. Monitor Azure Policy updates and integrate new features as needed.

## Conclusion
Enforcing NIST SP 800-53 Rev. 5 compliance using Azure Policy helps maintain robust security and governance across your Azure environment. Regular monitoring and updates ensure continuous compliance and protection.

## References

- [Azure Policy](https://docs.microsoft.com/en-us/azure/governance/policy/overview)
- [NIST SP 800-53 Rev. 5](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)









