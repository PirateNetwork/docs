## Follow the below steps to start clean with sapling (zs) address
It is very important that your understand each of the steps and follow accordingly.

1. Export privkey of the Sapling `zs` address(es) that has the funds by clicking on 3 dots and select **copy priv key (WIF)**
![copy private key of any address](https://github.com/PirateNetwork/docs/blob/master/images/Agama-copy-priv-key-wif.png)  
The `zs` addr full privkey look like this `secret-extended-key-main1qw3hr79rqgqqpqyh5dyplsjzm2cg8crykwpjr5j2pc0kle7tqkqanks33ar4nupcuxr0wvp58hzpazclgw2sg2e677augzdjmqj0supayuzuqmk3z5qqwgzmmygzh6up6alstzqneunwmdgnj5tanasqhxy7v620hnvw3fsdmmtnaysua6xdgmxg42j4xhjglqyp68yf76tceun767kw2x86ngfd4kdy559gu5gcz37uud84et4ppakrxl7he3ua4jg3kxz5tzfvjtswxgkgw`  
The privkey includes `secret-extended-key-`. Don't leave that out.
2. Stop Pirate wallet 
3. Goto Pirate data dir
```
 - Windows: %AppData%\Komodo\PIRATE
 - MacOS: ~/Library/Application\ Support/Komodo/PIRATE
 - Linux: ~/.komodo/PIRATE
```
4. Backup Pirate `wallet.dat` file somewhere safe
5. Delete `wallet.dat` file
6. Start Pirate in native mode (this will create new wallet.dat without any existing addresses)
7. Import sapling priv key using Agama **Settings > CLI** section
- Select **PIRATE (native)** daemon and use your privkey with `z_importkey` param like below
```
z_importkey secret-extended-key-main1qw3hr79rqgqqpqyh5dyplsjzm2cg8crykwpjr5j2pc0kle7tqkqanks33ar4nupcuxr0wvp58hzpazclgw2sg2e677augzdjmqj0supayuzuqmk3z5qqwgzmmygzh6up6alstzqneunwmdgnj5tanasqhxy7v620hnvw3fsdmmtnaysua6xdgmxg42j4xhjglqyp68yf76tceun767kw2x86ngfd4kdy559gu5gcz37uud84et4ppakrxl7he3ua4jg3kxz5tzfvjtswxgkgw
```

![Image Example](https://github.com/PirateNetwork/docs/blob/master/images/Agama-Settings-CLI-import-privkey.png)

#### This will not return any output and should trigger rescan automatically in the background. You should be able to see the address in Agama receive tab after the rescan is done. You can [keep an eye on the debug.log](https://github.com/PirateNetwork/docs/blob/master/how-to-check-pirate-debug-log-file.md) for live progress. 
