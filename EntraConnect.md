# How to Use Entra Connect 🔌

## Introduction
Entra Connect is a tool that helps you integrate your on-premises directories with Azure Active Directory. This guide will walk you through the steps to set up and use Entra Connect. For the puspose of this guide, I will be using a virtual machine in Hyper-V to demonstrate the installation and configuration of Entra Connect. 🖥️

## Prerequisites
- An Azure Active Directory tenant
- An on-premises Active Directory
- A server to install Entra Connect

## Installation

### TLS 1.2 enforcement for Microsoft Entra Connect
![image](https://github.com/user-attachments/assets/59fa7bb3-fbdd-4173-9c18-858b66d2f1ac)


1. **Download Entra Connect**
    - Go to the [Microsoft Download Center](https://www.microsoft.com/en-us/download) and download the latest version of Entra Connect.

2. **Install Entra Connect**
    - Run the installer and follow the on-screen instructions.
    - Choose the appropriate installation type (Express or Custom).

## Configuration

1. **Launch Entra Connect**
    - Open Entra Connect from the Start menu.

2. **Configure Directory Sync**
    - Follow the wizard to connect to your Azure AD tenant.
    - Enter your Azure AD global administrator credentials.
    - Connect to your on-premises Active Directory.

3. **Select Features**
    - Choose the features you want to enable, such as password synchronization or single sign-on.

4. **Finish Configuration**
    - Complete the wizard and start the synchronization process.

## Monitoring and Maintenance

- **Monitor Synchronization**
  - Use the Entra Connect Health dashboard to monitor the status of your synchronization.
  
- **Regular Updates**
  - Keep Entra Connect updated to ensure compatibility and security.

## Troubleshooting

- **Common Issues**
  - Refer to the [official documentation](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-install-prerequisites) for troubleshooting common issues.

## Conclusion
Entra Connect simplifies the process of integrating your on-premises directories with Azure AD. Follow this guide to ensure a smooth setup and ongoing maintenance.
