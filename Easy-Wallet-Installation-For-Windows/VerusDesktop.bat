echo Creating Zcash params folder
mkdir %appdata%\ZcashParams & cd %appdata%\ZcashParams

echo Downloading Zcash parameters
curl -L -O https://download.z.cash/downloads//sapling-output.params 
curl -L -O https://download.z.cash/downloads//sprout-groth16.params 
curl -L -O https://download.z.cash/downloads//sprout-proving.key 
curl -L -O https://download.z.cash/downloads//sprout-verifying.key 
curl -L -O https://download.z.cash/downloads//sapling-spend.params

echo CREATING KOMODO AND PIRATE FOLDERS
mkdir %appdata%\komodo\PIRATE
cd %appdata%\komodo\PIRATE

echo DOWNLOADING BOOTSTRAP
curl -L -O http://bootstrap.dexstats.info/ARRR-bootstrap.tar.gz

echo EXTRACTING BOOTSTRAP
tar -zxf ARRR-bootstrap.tar.gz --directory %appdata%\komodo\PIRATE

cd %USERPROFILE%\Desktop

echo DOWNLOADING Verus Desktop
curl -L -O https://github.com/VerusCoin/Verus-Desktop/releases/download/v0.7.2-6/Verus-Desktop-Windows-v0.7.2-6.zip

echo EXTRACTING Verus Desktop
tar -xf Verus-Desktop-Windows-v0.7.2-6.zip *.exe

echo Launching Verus Desktop Wallet
start Verus-Desktop-v0.7.2-6.exe

del Verus-Desktop-Windows-v0.7.2-6.zip
