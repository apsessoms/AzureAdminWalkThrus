# Configuring Uniform Virtual Machine Scale Sets

Head over to https://www.portal.azure.com and type in VMSS for Virtual Machine Scale Sets in ths search bar. 

Click Create and name the resource group as well as the scale set. Try to use a naming schema that you are familiar with. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/0204037c-69a7-4516-a95f-fc37d5a96098)


[def]: image-1.png

It is important to remember that with VMSS that you can have <u>regional deployments </u> OR you can <u>pin it across multiple availability zones.</U>

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/e8c8fd91-83ba-40da-ab38-99247967981e)


If you will notice, this is the same as configuring a virtual machine. The only difference is that we are defining the standards for our VM scale set instances. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/baf5b85b-3e9f-4eba-b1f5-bbea16ae2247)


Click next and keep the disk information the same. On *Networking* we will deploy to an existing virtual network. We will modify the definition of the network interface card. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/00a41b18-9d7a-4c4f-9adf-97550f4515f6)


Please note the NIC network security group setting is set to *"None"* because this VNET already has one. By default, Public IP addresses are <u>disabled</u> and this is because you will need to use a load balancer in front of it. It is the central access point into the solution that you're hosting. Each VMSS will have a public ip address. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/12350f23-f9b7-46c0-ac69-5429ce59a4d8)


For demonstration purposes...even though it might be tempting...*do not select Azure Load Balancer* on the next screen. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/8ff6a6ee-4231-42e8-a110-77bce5231805)


We will set the initial instance count to 0 so that we don't have any instances up and running when we actually create the scale set. Let's also leave the scaling polocy at Manual scaling for now. Click on review and create. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/1d87742f-b378-48be-92ec-b2efffdb9732)


From here, lets change that number from 0 to 2 and click save. Then on your left hand menu, click on instances. You should see two VMSSS being created or already running. 

![image](https://github.com/apsessoms/AzureAdminWalkThrus/assets/99392512/2324543b-d082-4679-ab8a-bead8aaa7318)


These instances were created based on the definition we created for our scale set. The size, the disks, the networking parameters, etc. These two VMSS have those mirror configurations and thats why we use scale sets. It is easy to create instances quickly that are for serving the same purpose. 
