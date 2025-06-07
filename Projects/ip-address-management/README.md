## Deploy Windows Server 

```sh
az deployment group create --resource-group net-fun-bootcamp --template-file "C:\Users\Conno\src\exp-net-fundamentals-2025-Q2\projects\ip-address-management\Templates\vm\main.bicep" --parameters "C:\Users\Conno\src\exp-net-fundamentals-2025-Q2\projects\ip-address-management\Templates\vm\parameters.bicepparam"
 ```