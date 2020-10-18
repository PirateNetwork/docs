echo DOWNLOADING Z-ZIP
wget64.exe -N https://www.7-zip.org/a/7z1900-x64.exe

echo INSTALLING 7-ZIP
7z1900-x64.exe /S

echo DOWNLOADING BOOTSTRAP
wget64.exe -N https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz

echo Removing Z-zip file
del 7z1900-x64.exe

echo Delete Old Blocks and chainstate folders
rd /s /q "%appdata%\komodo\PIRATE\chainstate"
rd /s /q "%appdata%\komodo\PIRATE\blocks"

echo EXTRACTING BOOTSTRAP
"C:\Program Files\7-Zip\7z" e "PIRATE-bootstrap.tar.gz" -o"%appdata%\komodo\PIRATE\"
echo EXTRACTING BOOTSTRAP
"C:\Program Files\7-Zip\7z" x "%appdata%\komodo\PIRATE\PIRATE-bootstrap.tar" -o"%appdata%\komodo\PIRATE\"

echo DOWNLOADING SEVENSEAS
wget64.exe -N https://github.com/PirateNetwork/SevenSeas/releases/download/0.8.2/sevenseas-win-0.8.2.zip

echo EXTRACTING SEVENSEAS
"C:\Program Files\7-Zip\7z" e sevenseas-win-0.8.2.zip -o"%~dp0" *.exe -r -y > nul

echo Launching SEVENSEAS
start sevenseas.exe
del sevenseas-win-0.8.2.zip
del %appdata%\komodo\PIRATE\PIRATE-bootstrap.tar

