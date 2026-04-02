cd / # change directory
ls -F # lists files
sudo apt update # Updates the package list from repositories
sudo apt upgrade # Upgrades all installed packages to their latest versions
sudo apt install parted # install parted 
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e  # That command combines several instructions to display detailed information about your disks and partitions
sudo parted -l # lists all storage devices and their partition tables on your system
lsblk -f # shows information about your block devices
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" # That command detects whether your system is booting in UEFI or BIOS.
echo "miarchivo" > test.txt # create a file
ls # list files
cat test.txt # show the content of the file
stat test.txt # show detailer content of the file