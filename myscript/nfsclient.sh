sudo apt update
sudo apt install -y --force-yes nfs-common
sudo mkdir -p /mnt/clientfolder/
sudo mount 10.10.1.1:/mnt/sharefolder /mnt/clientfolder/