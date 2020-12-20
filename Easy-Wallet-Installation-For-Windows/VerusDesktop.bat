echo CREATING KOMODO AND PIRATE FOLDERS
mkdir %appdata%\komodo\PIRATE

echo DOWNLOADING BOOTSTRAP
curl -L -O http://bootstrap.dexstats.info/ARRR-bootstrap.tar.gz

echo EXTRACTING BOOTSTRAP
tar -zxf ARRR-bootstrap.tar.gz --directory %appdata%\komodo\PIRATE

echo Downloading Zcash parameters

curl -L -O https://download.z.cash/downloads//sapling-output.params 
curl -L -O https://download.z.cash/downloads//sprout-groth16.params 
curl -L -O https://download.z.cash/downloads//sprout-proving.key 
curl -L -O https://download.z.cash/downloads//sprout-verifying.key 
curl -L -O https://download.z.cash/downloads//sapling-spend.params

cd %USERPROFILE%\Desktop

echo DOWNLOADING Verus Desktop
wget64.exe -N https://github.com/VerusCoin/Verus-Desktop/releases/download/v0.7.2-6/Verus-Desktop-Windows-v0.7.2-6.zip

echo EXTRACTING Verus Desktop
"C:\Program Files\7-Zip\7z" e Verus-Desktop-Windows-v0.7.2-6.zip -o"%~dp0" *.exe -r -y > nul

echo Launching Verus Desktop Wallet
start Verus-Desktop-v0.7.2-6.exe

del Verus-Desktop-Windows-v0.7.2-6.zip
