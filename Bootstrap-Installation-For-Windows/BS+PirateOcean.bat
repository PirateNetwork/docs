dre@echo off

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

echo DOWNLOADING PIRATEOCEAN
wget64.exe -N https://github.com/PirateNetwork/PirateOcean/releases/download/release_4e1aa04/pirate4e1aa04_win.zip

echo EXTRACTING PIRATEOCEAN
"C:\Program Files\7-Zip\7z" e pirate4e1aa04_win.zip -o"%~dp0" *.exe -r -y > nul

echo LAUNCING PIRATEOCEAN
start pirate-qt-win.exe

del pirate4e1aa04_win.zip
del 7z1900-x64.exe
del PIRATE-bootstrap.tar.gz
del %appdata%\komodo\PIRATE\PIRATE-bootstrap.tar