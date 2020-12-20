echo Installing zcash parameters
cd ~/Library/Application\ Support/; mkdir -p ZcashParams/ && chmod 755 ZcashParams/;cd ~/Library/Application\ Support/ZcashParams/; curl --remote-name https://download.z.cash/downloads//sapling-spend.params; curl --remote-name https://download.z.cash/downloads//sprout-verifying.key; curl --remote-name https://download.z.cash/downloads//sprout-proving.key; curl --remote-name https://download.z.cash/downloads//sapling-output.params; curl --remote-name https://download.z.cash/downloads//sprout-groth16.params;

echo Creating Komodo And Pirate Folder , Downloading The Bootstrap
cd ~/Library/Application\ Support/; mkdir -p Komodo/PIRATE/ && chmod 755 Komodo/PIRATE/;curl -L -O http://bootstrap.dexstats.info/ARRR-bootstrap.tar.gz;tar -zxf ARRR-bootstrap.tar.gz -–directory ~/Library/Application\ Support/Komodo/PIRATE

Sleep 1s
cd ~/Desktop

echo Downloading PirateWallet
curl -L -O https://github.com/PirateNetwork/pirate/releases/download/v3.1.0/pirate-qt-MacOS-v3.1.0.dmg

echo Mounting PirateWallet
hdiutil attach pirate-qt-MacOS-v3.1.0.dmg

echo Copying PirateWallet To Applications folder

cp -rf PirateWallet.app /Applications

sleep 5s
echo Launching PirateWallet
open -a PirateWallet
