#!/bin/bash
# Day 3 planted-problems setup. Uses sudo.
sudo useradd -m -s /bin/bash sysupdate
echo 'sysupdate:letmein' | sudo chpasswd
sudo usermod -aG sudo sysupdate
printf '#!/bin/bash\ndate >> /tmp/.beacon\n' | sudo tee /usr/local/bin/.updater.sh > /dev/null
sudo chmod 755 /usr/local/bin/.updater.sh
echo '* * * * * root /usr/local/bin/.updater.sh' | sudo tee /etc/cron.d/system-update > /dev/null
sudo mkdir -p /opt/webapp
echo 'db_password=Summer2026' | sudo tee /opt/webapp/config.ini > /dev/null
sudo chmod 666 /opt/webapp/config.ini
printf '[Unit]\nDescription=Remote Help Portal\n\n[Service]\nExecStart=/usr/bin/python3 -m http.server 8080 --directory /tmp\nRestart=always\n\n[Install]\nWantedBy=multi-user.target\n' | sudo tee /etc/systemd/system/remote-help.service > /dev/null
sudo systemctl daemon-reload
sudo systemctl enable --now remote-help
clear
echo "Your box is ready. Good luck."
