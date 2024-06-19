sudo apt update
sudo apt install -y --force-yes nfs-kernel-server
sudo systemctl start nfs-kernel-server.service
sudo mkdir -p /mnt/sharefolder
sudo chown nobody:nogroup /mnt/sharefolder/
sudo chmod -R 777 /mnt/sharefolder/
echo "\n\n/mnt/sharefolder *(rw,sync,no_subtree_check)" | sudo tee -a /etc/exports
sudo exportfs -arv


