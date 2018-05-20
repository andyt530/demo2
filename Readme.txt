Step 1 - Install az clu2

Step 2 - Login 
az login -t dwpgovuk.onmicrosoft.com

Step 3 check the output of:
az account list -o table
Name                            CloudName    SubscriptionId                        State    IsDefault
------------------------------  -----------  ------------------------------------  -------  -----------
WA-DWK-SBOX                     AzureCloud   632d724b-7fe7-4e63-9fc8-ccc21d9aa13d  Enabled  True

If WA-DSK-SBOX is not default do:
az account set -s "WA-DWK-SBOX"

git clone git@github.com:andyt530/demo2.git

terraform init
./tf-stateimp.sh


