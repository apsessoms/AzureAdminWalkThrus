# Configuring Uniform Virtual Machine Scale Sets (VMSS): A Step-by-Step Guide

## Step 1: Access VMSS in Azure Portal
1. Go to [Azure Portal](https://www.portal.azure.com).
2. Search for "VMSS" in the search bar for Virtual Machine Scale Sets.

## Step 2: Create VMSS Resource Group
1. Click "Create."
2. Name the resource group and the scale set, using a familiar naming schema.

   ![Resource Group](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/0204037c-69a7-4516-a95f-fc37d5a96098)

3. Note that you can have regional deployments or pin across multiple availability zones.

   ![Deployment Options](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/e8c8fd91-83ba-40da-ab38-99247967981e)

## Step 3: Configure VM Standards
- Define the standards for VMSS instances (similar to configuring a virtual machine).

   ![VM Configuration](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/baf5b85b-3e9f-4eba-b1f5-bbea16ae2247)

## Step 4: Set Disk and Networking Information
1. Keep the disk information the same.
2. Deploy to an existing virtual network and modify the NIC definition.
3. Set NIC network security group to "None" if VNET already has one.
4. Public IP addresses are usually disabled (use a load balancer).

   ![Networking Configuration](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/12350f23-f9b7-46c0-ac69-5429ce59a4d8)

## Step 5: Skip Load Balancer Selection
- For demonstration, do not select "Azure Load Balancer."

   ![Skip Load Balancer](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/8ff6a6ee-4231-42e8-a110-77bce5231805)

## Step 6: Set Instance Count and Scaling Policy
1. Set the initial instance count to 0.
2. Leave the scaling policy at Manual scaling.
3. Review and create the VMSS.

   ![Instance Configuration](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/1d87742f-b378-48be-92ec-b2efffdb9732)

## Step 7: Update Instance Count
1. Change the instance count from 0 to 2 and click "Save."
2. Click on "Instances" to view the created or running VMSS.

   ![View Instances](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/2324543b-d082-4679-ab8a-bead8aaa7318)

---

By following these steps, you can efficiently configure Uniform Virtual Machine Scale Sets in Azure. VMSS allows you to create quickly mirrored instances that serve the same purpose, facilitating scalability and uniformity in your virtual environment.
