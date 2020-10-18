				
				
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

echo Downloading Verus Desktop
wget -N https://github.com/VerusCoin/Verus-Desktop/releases/download/v0.7.2-2/Verus-Desktop-Linux-v0.7.2-2-x86_64.tgz
tar -xzvf Verus-Desktop-Linux-v0.7.2-2-x86_64.tgz

echo Verus Desktop Wallet
chmod +x Verus-Desktop-v0.7.2-2-x86_64.AppImage
./Verus-Desktop-v0.7.2-2-x86_64.AppImage
