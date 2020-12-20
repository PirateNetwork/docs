				
				
										   #mmm   "                      m
										 #   "#  mmm     m mm   mmmm   mm#mm   mmm 
										 #mmm#"   #     #"  "  "   #     #    #"  #
										 #        #     #      m"""#     #    #"""" 
										 #      mm#mm   #      "mm"#     "mm  "#mm"'


###cd ~ #cd to home for wget & unzip

echo Creating /.komodo/PIRATE Folder
mkdir -p /home/$USER/.komodo/PIRATE && chmod 755 /home/$USER/.komodo/PIRATE

echo Installing DOWNLOAD BOOTSRAPS
wget -N –no-check-certificate –progress=dot:giga –continue –retry-connrefused –waitretry=3 –timeout=30 http://bootstrap.dexstats.info/ARRR-bootstrap.tar.gz -P /home/$USER/.komodo/PIRATE;tar -xzvf /home/$USER/.komodo/PIRATE/ARRR-bootstrap.tar.gz -C /home/$USER/.komodo/PIRATE

echo Downloading and extracting Zcash parameters
mkdir -p /home/$USER/.zcash-params/ && chmod 755 /home/$USER/.zcash-params/
wget -N https://download.z.cash/downloads//sprout-proving.key -P /home/$USER/.zcash-params
wget -N https://download.z.cash/downloads//sprout-verifying.key -P /home/$USER/.zcash-params
wget -N https://download.z.cash/downloads//sapling-spend.params -P /home/$USER/.zcash-params
wget -N https://download.z.cash/downloads//sapling-output.params -P /home/$USER/.zcash-params
wget -N https://download.z.cash/downloads//sprout-groth16.params -P /home/$USER/.zcash-params

echo Downloading PirateOcean
wget -N https://github.com/PirateNetwork/pirate/releases/download/v3.1.0/pirate-qt-windows-v3.1.0.zip

unzip pirate-qt-windows-v3.1.0.zip

echo Pirateocean Wallet
chmod +x pirate-qt-linux
./pirate-qt-linux
