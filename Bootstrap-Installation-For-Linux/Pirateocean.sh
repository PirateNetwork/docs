				
				
										   #mmm   "                      m
										 #   "#  mmm     m mm   mmmm   mm#mm   mmm 
										 #mmm#"   #     #"  "  "   #     #    #"  #
										 #        #     #      m"""#     #    #"""" 
										 #      mm#mm   #      "mm"#     "mm  "#mm"'


###cd ~ #cd to home for wget & unzip

echo Removing Old Blocks and Chainstate Folders
cd ~/.komodo/PIRATE/
rm -r blocks
rm -r chainstate
cd ~/Desktop

echo DOWNLOADING AND INSTALLING BOOTSRAP
wget -N --no-check-certificate --progress=dot:giga --continue --retry-connrefused --waitretry=3 --timeout=30 https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz -P /home/$USER/.komodo/PIRATE
tar -xzvf /home/$USER/.komodo/PIRATE/PIRATE-bootstrap.tar.gz -C /home/$USER/.komodo/PIRATE

echo Downloading PirateOcean
wget -N https://github.com/PirateNetwork/PirateOcean/releases/download/release_4e1aa04/pirate4e1aa04_linux.zip
unzip pirate4e1aa04_linux.zip

echo Pirateocean Wallet
chmod +x pirate-qt-linux
./pirate-qt-linux
