				
				
										   #mmm   "                      m
										 #   "#  mmm     m mm   mmmm   mm#mm   mmm 
										 #mmm#"   #     #"  "  "   #     #    #"  #
										 #        #     #      m"""#     #    #"""" 
										 #      mm#mm   #      "mm"#     "mm  "#mm"'


###cd ~ #cd to home for wget & unzip

echo Installing deps
sudo apt install libqt5websockets5 -y
sudo apt install libqt5widgets5 -y

echo Creating /.komodo/PIRATE Folder
mkdir -p /home/$USER/.komodo/PIRATE && chmod 755 /home/$USER/.komodo/PIRATE

echo Installing DOWNLOAD BOOTSRAPS
wget -N --no-check-certificate --progress=dot:giga --continue --retry-connrefused --waitretry=3 --timeout=30 https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz -P /home/$USER/.komodo/PIRATE
tar -xzvf /home/$USER/.komodo/PIRATE/PIRATE-bootstrap.tar.gz -C /home/$USER/.komodo/PIRATE
rm ~/.komodo/PIRATE/PIRATE-bootstrap.tar.gz

echo Downloading and extracting Zcash parameters
mkdir -p /home/$USER/.zcash-params/ && chmod 755 /home/$USR/.zcash-params/
wget -N https://z.cash/downloads/sprout-proving.key -P /home/$USER/.zcash-params


echo Downloading Sevenseas WalletE
cd ~/Desktop
wget -N https://github.com/radix42/SevenSeas/releases/download/0.8.2/sevenseas-linux-x86-0.8.2.zip
unzip sevenseas-linux-x86-0.8.2.zip
cd ~/Desktop/SevenSeas

echo Launcing Sevenseas Wallet
chmod +x sevenseas
./sevenseas
