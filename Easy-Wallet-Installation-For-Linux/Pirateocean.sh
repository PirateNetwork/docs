				
				
										   #mmm   "                      m
										 #   "#  mmm     m mm   mmmm   mm#mm   mmm 
										 #mmm#"   #     #"  "  "   #     #    #"  #
										 #        #     #      m"""#     #    #"""" 
										 #      mm#mm   #      "mm"#     "mm  "#mm"'


###cd ~ #cd to home for wget & unzip

echo Creating /.komodo/PIRATE Folder
mkdir -p /home/$USER/.komodo/PIRATE && chmod 755 /home/$USER/.komodo/PIRATE

echo Installing DOWNLOAD BOOTSRAPS
wget -N –no-check-certificate –progress=dot:giga –continue –retry-connrefused –waitretry=3 –timeout=30 http://bootstrap.dexstats.info/ARRR-bootstrap.tar.gz -P /home/$USER/.komodo/PIRATE;tar -xvf /home/$USER/.komodo/PIRATE/ARRR-bootstrap.tar.gz -C /home/$USER/.komodo/PIRATE

echo Downloading PirateOcean
wget -N https://github.com/PirateNetwork/pirate/releases/download/v3.1.0/pirate-qt-ubuntu1804-v3.1.0.zip

unzip pirate-qt-ubuntu1804-v3.1.0.zip
chmod fetch-params.sh
./fetch-params.sh

echo Pirateocean Wallet
chmod +x pirate-qt-linux
./pirate-qt-linux
