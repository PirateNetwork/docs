@echo off

echo DOWNLOADING Z-ZIP
wget64.exe -N https://www.7-zip.org/a/7z1900-x64.exe

echo INSTALLING 7-ZIP
7z1900-x64.exe /S

echo Delete Old Blocks and chainstate folders
rd /s /q "%appdata%\komodo\PIRATE\chainstate"
rd /s /q "%appdata%\komodo\PIRATE\blocks"

echo DOWNLOADING BOOTSTRAP
wget64.exe -N https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz

echo EXTRACTING BOOTSTRAP
"C:\Program Files\7-Zip\7z" e "PIRATE-bootstrap.tar.gz" -o"%appdata%\komodo\PIRATE\"
"C:\Program Files\7-Zip\7z" x "%appdata%\komodo\PIRATE\PIRATE-bootstrap.tar" -o"%appdata%\komodo\PIRATE\"

echo DOWNLOADING Verus Desktop
wget64.exe -N https://github.com/VerusCoin/Verus-Desktop/releases/download/v0.7.2-5/Verus-Desktop-Windows-v0.7.2-5.zip

echo EXTRACTING Verus Desktop
"C:\Program Files\7-Zip\7z" e Verus-Desktop-Windows-v0.7.2-5.zip -o"%~dp0" *.exe -r -y > nul

echo Launching Verus Desktop Wallet
start Verus-Desktop-Windows-v0.7.2-5.zip

del Verus-Desktop-Windows-v0.7.2-5.zip
del 7z1900-x64.exe
del PIRATE-bootstrap.tar.gz
del %appdata%\komodo\PIRATE\PIRATE-bootstrap.tar
