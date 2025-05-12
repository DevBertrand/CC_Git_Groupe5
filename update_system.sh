echo"Mise à niveau des paquets installés...">>/var/log/system_update.log
sudo apt upgrade -y >> /var/log/system_update.log 2>&1
if [ $? -ne 0]; then
        echo"Erreur lors de la mise à niveau des paquets." >> /var/log/system_update.log
        exit 1
fi
