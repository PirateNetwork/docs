echo Installing zcash parameters
cd ~/Library/Application\ Support/; mkdir -p ZcashParams/ && chmod 755 ZcashParams/;cd ~/Library/Application\ Support/ZcashParams/; curl --remote-name https://download.z.cash/downloads//sapling-spend.params; curl --remote-name https://download.z.cash/downloads//sprout-verifying.key; curl --remote-name https://download.z.cash/downloads//sprout-proving.key; curl --remote-name https://download.z.cash/downloads//sapling-output.params; curl --remote-name https://download.z.cash/downloads//sprout-groth16.params;

echo Creating Komodo And Pirate Folder
cd ~/Library/Application\ Support/; mkdir -p Komodo/PIRATE/ && chmod 755 Komodo/PIRATE/;curl -L -O http://bootstrap.dexstats.info/ARRR-bootstrap.tar.gz;tar -zxf ARRR-bootstrap.tar.gz –directory ~/Library/Application\ Support/Komodo/PIRATE

cd ~/Desktop

echo downloading VerusDesktop
Curl -L -O https://github.com/VerusCoin/Verus-Desktop/releases/download/v0.7.2-6/Verus-Desktop-MacOS-v0.7.2-6.tgz

echo Extracting VerusDesktop
tar -xvzf Verus-Desktop-MacOS-v0.7.2-6.tgz

Mounting VerusDesktop
hdiutil attach Verus-Desktop-v0.7.2-6.dmg
cd /Volumes/Verus-Desktop\ 0.7.2-6

echo Copying VerusDesktop To Applications folder
cp -rf Verus-Desktop.app /Applications

echo Opening VerusDesktop
open -a Verus-Desktop
