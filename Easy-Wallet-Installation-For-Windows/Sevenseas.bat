  
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

echo DOWNLOADING SEVENSEAS
wget64.exe -N https://github.com/PirateNetwork/SevenSeas/releases/download/0.8.2/sevenseas-win-0.8.2.zip

echo EXTRACTING SEVENSEAS
tar -xf sevenseas-win-0.8.2.zip -o"%~dp0" *.exe -r -y > nul

echo Launching SEVENSEAS
start sevenseas.exe
del sevenseas-win-0.8.2.zip
