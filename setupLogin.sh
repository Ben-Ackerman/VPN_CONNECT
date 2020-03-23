#!/bin/sh

echo $AD_USERNAME > login.txt
echo $RSA_FILE_PASSWORD | stoken tokencode | awk '{print $NF}' >> login.txt
echo $AD_PASSWORD >> login.txt
echo "y" >> login.txt
