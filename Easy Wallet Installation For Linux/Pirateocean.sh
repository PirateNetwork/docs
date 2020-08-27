				
				
										   #mmm   "                      m
										 #   "#  mmm     m mm   mmmm   mm#mm   mmm 
										 #mmm#"   #     #"  "  "   #     #    #"  #
										 #        #     #      m"""#     #    #"""" 
										 #      mm#mm   #      "mm"#     "mm  "#mm"'


###cd ~ #cd to home for wget & unzip

echo Installing deps
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt install gcc-8 -y
sudo apt install g++-8 -y
sudo apt install gcc -y
sudo apt-get install build-essentials pkg-config libc6-dev m4 g++multilib autoconf libtool ncurses-dev unzip git python zlib1g-dev wget bsdmainutils -y
sudo apt install automake libboost-all-dev libssl-dev libprotobuf-dev protobuf-compiler libgtest-dev libdb++-dev ntp ntpdate -y
sudo apt install software-properties-common curl clang libcurl4-gnutls-dev cmake clang libsodium-#dev  jq -y 
sudo apt-get install libqt5widgets5 -y
sudo apt install libqt5websockets5 -y
sudo apt-get install libminiupnpc17
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python zlib1g-dev wget bsdmainutils automake libboost-all-dev libssl-dev libprotobuf-dev protobuf-compiler libgtest-dev libqrencode-dev libdb++-dev ntp ntpdate software-properties-common curl clang libcurl4-gnutls-dev cmake clang libsodium-dev jq -y

echo Creating /.komodo/PIRATE Folder
mkdir -p /home/$USER/.komodo/PIRATE && chmod 0777 /home/$USER/.komodo/PIRATE
echo Installing DOWNLOAD BOOTSRAPS
wget -N --no-check-certificate --progress=dot:giga --continue --retry-connrefused --waitretry=3 --timeout=30 https://eu.bootstrap.dexstats.info/PIRATE-bootstrap.tar.gz -P /home/$USER/.komodo/PIRATE
tar -xzvf /home/$USER/.komodo/PIRATE/PIRATE-bootstrap.tar.gz -C /home/$USER/.komodo/PIRATE
rm ~/.komodo/PIRATE/PIRATE-bootstrap.tar.gz

echo Downloading and extracting Zcash parameters
mkdir -p /home/$USER/.zcash-params/ && chmod 0777 /home/$USER/.zcash-params/
wget -N https://z.cash/downloads/sprout-proving.key -P /home/$USER/.zcash-params
wget -N https://z.cash/downloads/sprout-verifying.key -P /home/$USER/.zcash-params
wget -N https://z.cash/downloads/sapling-spend.params -P /home/$USER/.zcash-params
wget -N https://z.cash/downloads/sapling-output.params -P /home/$USER/.zcash-params
wget -N https://z.cash/downloads/sprout-groth16.params -P /home/$USER/.zcash-params

echo Downloading PirateOcean
wget -N https://github.com/PirateNetwork/PirateOcean/releases/download/release_113fbc7/pirate113fbc7_linux.zip
unzip pirate113fbc7_linux.zip

echo Pirateocean Wallet
chmod 777 pirate-qt-linux
./pirate-qt-linux
