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

echo DOWNLOADING PIRATEOCEAN
curl -L -O https://github.com/PirateNetwork/pirate/releases/download/v3.1.0/pirate-qt-windows-v3.1.0.zip

echo EXTRACTING PIRATEOCEAN
tar -xf pirate-qt-windows-v3.1.0.zip *.exe

echo LAUNCING PIRATEOCEAN
start pirate-qt-win.exe
