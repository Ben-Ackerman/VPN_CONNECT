setupenv()
{
echo 'Please provide values to place in the .env file...'
read -p 'AD Username: ' AD_uservar
read -p 'AD Password: ' AD_pswvar
read -p 'Token Decrpyt password: ' token_decrypt_pswvar


echo "AD_USERNAME=$AD_uservar" > .env
echo "AD_PASSWORD=$AD_pswvar" >> .env
echo "RSA_FILE_PASSWORD=$token_decrypt_pswvar" >> .env
}

setupstoken()
{
read -p 'Token Filename: ' token_file

echo "\nImporting token to stoken..." && stoken import --file tokens/$token_file --force && echo "\nCalling stoken setpin... (note just put your normal RSA pin here)" && stoken setpin
}

while true; do
    read -p "Do you wish to set update stoken? " yn
    case $yn in
        [Yy]* ) setupstoken; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to set update your .env for this script? " yn
    case $yn in
        [Yy]* ) setupenv; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
