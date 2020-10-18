				
				
										   #mmm   "                      m
										 #   "#  mmm     m mm   mmmm   mm#mm   mmm 
										 #mmm#"   #     #"  "  "   #     #    #"  #
										 #        #     #      m"""#     #    #"""" 
										 #      mm#mm   #      "mm"#     "mm  "#mm"'


###cd ~ #cd to home for wget & unzip

cd ~/.komodo/PIRATE/
rm -r blocks
rm -r chainstate
cd ~/Desktop
echo Installing DOWNLOAD BOOTSRAPS
wget -N --no-check-certificate --progress=dot:giga --continue --retry-connrefused --waitretry=3 --timeout=30 https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz -P /home/$USER/.komodo/PIRATE
tar -xzvf /home/$USER/.komodo/PIRATE/PIRATE-bootstrap.tar.gz -C /home/$USER/.komodo/PIRATE

echo Downloading Sevenseas Wallet
cd ~/Desktop
wget -N https://github.com/radix42/SevenSeas/releases/download/0.8.2/sevenseas-linux-x86-0.8.2.zip
unzip sevenseas-linux-x86-0.8.2.zip
cd ~/Desktop/SevenSeas

echo Launcing Sevenseas Wallet
chmod +x sevenseas
./sevenseas
