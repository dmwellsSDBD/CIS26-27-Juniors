#!/bin/bash
# Day 2 audit setup. Uses sudo; enter your password if asked.
sudo useradd -m -s /bin/bash alice && sudo usermod -aG sudo alice
sudo useradd -m -s /bin/bash bob && sudo usermod -aG sudo bob
sudo useradd -m -s /bin/bash helpdesk && sudo usermod -aG sudo helpdesk
sudo useradd -m -s /bin/bash guest2
sudo mkdir -p /srv/payroll
echo "FAKE employee records for practice" | sudo tee /srv/payroll/employees.txt > /dev/null
sudo chmod 777 /srv/payroll /srv/payroll/employees.txt
echo "Audit box is ready."
