#!/usr/bin/env bash   
sudo pkill -f capitains-nautilus

cd ~/Nautilus
source venv/bin/activate
nohup capitains-nautilus --debug --host 0.0.0.0 --port 5000 /vagrant_data/latinLit >nautilus.log 2>&1 &
