echo Installing zcash parameters
cd ~/Library/Application\ Support/; mkdir -p ZcashParams/ && chmod 755 ZcashParams/;cd ~/Library/Application\ Support/ZcashParams/; curl --remote-name https://download.z.cash/downloads//sapling-spend.params; curl --remote-name https://download.z.cash/downloads//sprout-verifying.key; curl --remote-name https://download.z.cash/downloads//sprout-proving.key; curl --remote-name https://download.z.cash/downloads//sapling-output.params; curl --remote-name https://download.z.cash/downloads//sprout-groth16.params;

echo Creating Komodo And Pirate Folder , Downloading The Bootstrap
cd ~/Library/Application\ Support/; mkdir -p Komodo/PIRATE/ && chmod 755 Komodo/PIRATE/;curl -L -O http://bootstrap.dexstats.info/ARRR-bootstrap.tar.gz;tar -zxf ARRR-bootstrap.tar.gz -–directory ~/Library/Application\ Support/Komodo/PIRATE

cd ~/Desktop

echo Downloading Sevenseas Wallet
Curl -L -O https://github.com/PirateNetwork/SevenSeas/releases/download/0.8.2/macOS-sevenseas-v0.8.2.dmg

echo Mounting Sevenseas Wallet
hdiutil attach macOS-sevenseas-v0.8.2.dmg

cd /Volumes/SevenSeas-v0.8.2
cp -rf SevenSeas.app /Applications

echo Launching Sevenseas 
Open -a Sevenseas
