sudo apt update
sudo apt install -y --force-yes nfs-kernel-server ufw
sudo ufw allow from 10.10.1.1/24 to any port nfs
sudo ufw allow ssh
echo y | sudo ufw enable
sudo systemctl start nfs-kernel-server.service
sudo mkdir -p /mnt/sharefolder
sudo chown nobody:nogroup /mnt/sharefolder/
sudo chmod -R 777 /mnt/sharefolder/
echo "\n\n/mnt/sharefolder *(rw,sync,no_subtree_check)" | sudo tee -a /etc/exports
sudo exportfs -arv
sudo touch /mnt/sharefolder/nfsok


