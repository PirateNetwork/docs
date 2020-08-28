				
				
										   #mmm   "                      m
										 #   "#  mmm     m mm   mmmm   mm#mm   mmm 
										 #mmm#"   #     #"  "  "   #     #    #"  #
										 #        #     #      m"""#     #    #"""" 
										 #      mm#mm   #      "mm"#     "mm  "#mm"'


###cd ~ #cd to home for wget & unzip

echo Installing Pirateocean package
sudo apt-get install libminiupnpc17

echo Creating /.komodo/PIRATE Folder
mkdir -p /home/$USER/.komodo/PIRATE && chmod 755 /home/$USER/.komodo/PIRATE
echo Installing DOWNLOAD BOOTSRAPS
wget -N --no-check-certificate --progress=dot:giga --continue --retry-connrefused --waitretry=3 --timeout=30 https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz -P /home/$USER/.komodo/PIRATE
tar -xzvf /home/$USER/.komodo/PIRATE/PIRATE-bootstrap.tar.gz -C /home/$USER/.komodo/PIRATE
rm ~/.komodo/PIRATE/PIRATE-bootstrap.tar.gz

echo Downloading and extracting Zcash parameters
mkdir -p /home/$USER/.zcash-params/ && chmod 755 /home/$USER/.zcash-params/
wget -N https://z.cash/downloads/sprout-proving.key -P /home/$USER/.zcash-params
wget -N https://z.cash/downloads/sprout-verifying.key -P /home/$USER/.zcash-params
wget -N https://z.cash/downloads/sapling-spend.params -P /home/$USER/.zcash-params
wget -N https://z.cash/downloads/sapling-output.params -P /home/$USER/.zcash-params
wget -N https://z.cash/downloads/sprout-groth16.params -P /home/$USER/.zcash-params

echo Downloading PirateOcean
wget -N https://github.com/PirateNetwork/PirateOcean/releases/download/release_113fbc7/pirate113fbc7_linux.zip
unzip pirate113fbc7_linux.zip

echo Pirateocean Wallet
chmod +x pirate-qt-linux
./pirate-qt-linux
