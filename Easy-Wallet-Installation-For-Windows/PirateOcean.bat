@echo off

echo DOWNLOADING Z-ZIP
wget64.exe -N https://www.7-zip.org/a/7z1900-x64.exe

echo INSTALLING 7-ZIP
7z1900-x64.exe /S

echo DOWNLOADING BOOTSTRAP
wget64.exe -N https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz

echo EXTRACTING BOOTSTRAP
"C:\Program Files\7-Zip\7z" e "PIRATE-bootstrap.tar.gz" -o"%appdata%\komodo\PIRATE\"
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

echo DOWNLOADING PIRATEOCEAN
wget64.exe -N https://github.com/PirateNetwork/PirateOcean/releases/download/release_113fbc7/pirate113fbc7_win.zip

echo EXTRACTING PIRATEOCEAN
"C:\Program Files\7-Zip\7z" e pirate113fbc7_win.zip -o"%~dp0" *.exe -r -y > nul

echo LAUNCING PIRATEOCEAN
start pirate-qt-win.exe

del pirate113fbc7_win.zip
del 7z1900-x64.exe
del PIRATE-bootstrap.tar.gz
