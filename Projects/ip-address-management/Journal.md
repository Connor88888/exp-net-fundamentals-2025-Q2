## Downloaded Azure Reasource Template

After deploying my Microsoft Windows Server 2025 to Azure VM.
I Downloaded the reasource templates to be able to easily deploy again.

## Coverting Azure Resource Template to Azure Bicep

I launched the DataCenter Server which had no Windows UI.
I want to reuse my reasource template files, but they are too hard to work with directly. So I am going to convert them to Azure Bicep.

Install Azure CLI
```sh
curl -sl https://aka.ms/installazurecliwindows | sudo bash
az login --use-device-code
```
Convert to Azure Bicep

```sh
cd ip-address-management\Templates\vm
az bicep decompile --file "C:\Users\Conno\src\exp-net-fundamentals-2025-Q2\projects\ip-address-management\Templates\template.json"
```

## Correcting Bicep file using Corsor AI and ensuring successful deployment

After attempting to use the following command to launch my VM, I kept producing errors for content already having been consumed

```sh
cd ip-address-management/templates/vm
az deployment group create \
 --reasource-group net-fun-bootcamp \
 --parameters @parameters.json
 ```

To remedy the issue I downloaded the Deployment files from my web browser and instructed cursor AI to produce Bicep files from them. Once complet Cursor AI was able to provide the following command to launch the deployment

```sh
az deployment group create --resource-group net-fun-bootcamp --template-file "C:\Users\Conno\src\exp-net-fundamentals-2025-Q2\projects\ip-address-management\Templates\vm\main.bicep" --parameters "C:\Users\Conno\src\exp-net-fundamentals-2025-Q2\projects\ip-address-management\Templates\vm\parameters.bicepparam"
```
![Screenshot 2025-06-06 124428](https://github.com/user-attachments/assets/0a9161c7-2d1a-4147-956e-8c7ae1b82a02)

 
