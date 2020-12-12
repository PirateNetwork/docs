				
				
				   #mmm   "                      m
				 #   "#  mmm     m mm   mmmm   mm#mm   mmm 
				 #mmm#"   #     #"  "  "   #     #    #"  #
				 #        #     #      m"""#     #    #"""" 
				 #      mm#mm   #      "mm"#     "mm  "#mm"'

cd ~/Desktop
#Downloading PirateOs
echo "Downloading Ghostship"
wget -N https://github.com/PirateNetwork/PirateOS/releases/download/pirateOSiso/ghostship.tar.gz
#Extracting PirateOs
echo "Extracting Ghostship"
tar -xf ghostship.tar.gz
cd ~/Desktop/GhostShipIso/
cd GhostShip\ ISO
#Burn PirateOs On USB
Pass=$(echo "Please Enter Your Password To Start Burning Ghostship On USB And Wait Until it Finishes")
Unmount=$(echo "Unmounting Drive")
#Drive List
echo "Drive List"
lsblk -d -e 11,1 | grep -v loop
#Select Drive To Burn On 
echo "Select Disk Number?"
select yn in "sda" "sdb" "sdc" "sdd " "None"; do
    case $yn in
        sda ) echo $Unmount
	echo $Pass
	sudo umount /dev/sda; 
	sudo dd if=GhostSHIP.iso of=/dev/sda bs=5M 
break;;
        sdb ) echo $Unmount
	echo $Pass
	sudo umount /dev/sdb; 
	sudo dd if=GhostSHIP.iso of=/dev/sdb bs=5M 
break;;
	sdc ) echo $Unmount
	echo $Pass
	sudo umount /dev/sdc; 
	sudo dd if=GhostSHIP.iso of=/dev/sda bs=5M 
break;;
	sdc ) echo $Unmount
	echo $Pass
	sudo umount /dev/sdd; 
	sudo dd if=GhostSHIP.iso of=/dev/sdd bs=5M 
break;;
	None ) exit;;
    esac
done
#Remove Created Files From Desktop
rm ~/Desktop/ghostship.tar.gz
cd ~/Desktop
rm -r GhostShipIso
