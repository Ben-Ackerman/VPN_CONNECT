1. Make sure the cisco VPN cli is in your path. You can test this by doing

```
vpn --version
```

If this returns nothing I had to add the following folder to my path

```
export PATH=$PATH:/opt/cisco/anyconnect/bin
```

2. Download your RSA token <token-name> and place it in the tokens directory

3. Download [stoke](https://github.com/cernekee/stoken) and make the binaries or use homebrew.

```
brew install stoken
```

7. Run the configure command and follow prompts. When prompted you need to configure both your .env file and stoken.

```
configure.sh
```

8. You should now be able to use the script to connect to the vpn. Test by running

```
loginToVPN
```

9. Add this directory to your \$PATH. You should now be able to run loginToVPN from anywhere in your filesystem.

10. I recommend adding the following alias to your .zshrc or .bashrc

```
alias vc="loginToVPN"
alias vd="vpn disconnect"
alias vs="vpn status"
```

11. You should now be able to connect to the vpn using 'vc' view the status of your connection using 'vs' and close your connection using 'vd'

## FAQ

1. I am getting permission errors when running commands? Try setting the permissions on the scripts by running

```
chmod +x loginToVPN
chmod +x configure.sh
chmod +x setupLogin.sh
```
