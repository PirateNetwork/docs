## Follow the below steps to start clean with sapling (zs) address
It is very important that your understand each of the steps and follow accordingly.

1. Export privkey of the Sapling `zs` address(es) that has the funds
2. stop PIrate wallet 
3. backup wallet.dat file somewhere safe
4. delete wallet.dat file
5. start Pirate in native mode (this will create new wallet.dat without any existing addresses)
6. import sapling priv key using Agama Settings > CLI section
- Select PIRATE as native daemon and use your privkey with `z_importkey` param like below
```
z_importkey secret-extended-key-main1qw3hr79rqgqqpqyh5dyplsjzm2cg8crykwpjr5j2pc0kle7tqkqanks33ar4nupcuxr0wvp58hzpazclgw2sg2e677augzdjmqj0supayuzuqmk3z5qqwgzmmygzh6up6alstzqneunwmdgnj5tanasqhxy7v620hnvw3fsdmmtnaysua6xdgmxg42j4xhjglqyp68yf76tceun767kw2x86ngfd4kdy559gu5gcz37uud84et4ppakrxl7he3ua4jg3kxz5tzfvjtswxgkgw
```

