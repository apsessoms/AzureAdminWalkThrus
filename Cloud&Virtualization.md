# Cloud & Virtualization ☁

## Introduction

Virtualization is the ability to abstract/seperate the operating system (OS) from the physical hardware. To create a virtual computer, your physical hardware (laptop or PC) needs to be **shared** with the virtual computer. The hypervisor is the tool that allows you to share your physical hardware with the virtual computer. 


![alt text](image-3.png)

There are two types of hypervisors: Type 1 and Type 2.
+ **Type 1:** Bare Metal Hypervisor (runs directly on the hardware)
    + VMware ESXi, Microsoft Hyper-V, Citrix XenServer
+ **Type 2:** Hosted Hypervisor (the hypervisor is an application that runs on the host OS)
    + Virtualbox, VMware Workstation, Oracle VirtualBox, Parallels Desktop

## Benefits of Virtualization
+ **Cost Savings:** Virtualization reduces the number of physical servers needed, which reduces the cost of hardware, power, and cooling.
+ **Server Provisioning:** Virtualization allows you to create a new virtual server in minutes.
+ **Disaster Recovery:** Virtualization allows you to create a backup of your virtual server and restore it in case of a disaster.
+ **Legacy Support:** Virtualization can extend the life of OSs and applications providing more time for organizations to migrate to newer systems.

## Cloud Computing
**Disclaimer** The cloud is really just someone else's computer. 😆 Not really, but it's a good way to think about it. 

+ Cloud computing is the delivery of computing services over the internet.
+ Virtualization is the foundation of cloud computing.

## Quick history of server technology 
Enterprise servers consisted of a single server that ran a single application (Windows Server or Linux Server). This was installed on specific hardware and was not shared with other applications. All server RAM, processing power, and storage was dedicated to that single application. 

![alt text](image-4.png)    

The problem with this setup was that the servers were underutilized, only using about 10-15% of their resources. This was a waste of resources and money. The major problem with this configuration is that when a component failed, the entire server went down. This is commonly referred to as a "**single point of failure**". 

## Types of Clouds

There are four primary cloud models:
+ **Public Cloud:** Services are delivered over the internet and shared across organizations. 
    + Microsoft Azure, Amazon Web Services (AWS), Google Cloud Platform (GCP)
+ **Private Cloud:** Services are delivered over a private network and are dedicated to a single organization.
    + On-premises data center, Azure Stack, VMware Cloud on AWS
+ **Hybrid Cloud:** A combination of public and private clouds.
    + Azure, AWS, Google Cloud
+ **Community Cloud:** Services are shared by several organizations with similar interests.
    + Government, healthcare, finance

## Summary 
There are many benefits to virtualization and cloud computing. Virtualization allows you to create a virtual computer that shares your physical hardware. Cloud computing is the delivery of computing services over the internet. The cloud is someone else's computer. 😆