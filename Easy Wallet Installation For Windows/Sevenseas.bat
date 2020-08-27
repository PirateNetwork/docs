echo DOWNLOADING Z-ZIP
wget64.exe -N https://www.7-zip.org/a/7z1900-x64.exe

echo INSTALLING 7-ZIP
7z1900-x64.exe /S

echo DOWNLOADING BOOTSTRAP
wget64.exe -N https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz

echo Removing Z-zip file
del 7z1900-x64.exe

echo EXTRACTING BOOTSTRAP
"C:\Program Files\7-Zip\7z" e "PIRATE-bootstrap.tar.gz" -o"%appdata%\komodo\PIRATE\"
echo EXTRACTING BOOTSTRAP
"C:\Program Files\7-Zip\7z" x "%appdata%\komodo\PIRATE\PIRATE-bootstrap.tar" -o"%appdata%\komodo\PIRATE\"

echo Downloading Zcash parameters
    wget64.exe -N https://z.cash/downloads/sprout-proving.key
    wget64.exe -N https://z.cash/downloads/sprout-verifying.key
    wget64.exe -N https://z.cash/downloads/sapling-spend.params
    wget64.exe -N https://z.cash/downloads/sapling-output.params
    wget64.exe -N https://z.cash/downloads/sprout-groth16.params

echo Moving files to %appdata%\ZcashParams
xcopy "sprout-proving.key" "%appdata%\ZcashParams\"
move "sprout-verifying.key" "%appdata%\ZcashParams\"
move "sapling-spend.params" "%appdata%\ZcashParams\"
move "sapling-output.params" "%appdata%\ZcashParams\"
move "sprout-groth16.params" "%appdata%\ZcashParams\"
del sprout-proving.key

echo Installing Bootstrap + Running Wallet
@echo off
echo Removing OLD BLOCKS AND CHAINSTATE FOLDERS
rd /s /q %appdata%\komodo\PIRATE\blocks
rd /s /q %appdata%\komodo\PIRATE\chainstate

echo DOWNLOADING SEVENSEAS
wget64.exe -N https://github.com/PirateNetwork/SevenSeas/releases/download/0.8.2/sevenseas-win-0.8.2.zip

echo EXTRACTING SEVENSEAS
"C:\Program Files\7-Zip\7z" e sevenseas-win-0.8.2.zip -o"%~dp0" *.exe -r -y > nul

echo RUNNING SEVENSEAS
start sevenseas.exe
del sevenseas-win-0.8.2.zip


