#!/usr/bin/env bash   
sudo pkill -f capitains-nemo
sudo pkill -f capitains-nautilus

cd ~/flask-capitains-nemo
source venv/bin/activate
nohup capitains-nemo --host 0.0.0.0 --port 8100 http://localhost:5000 >nemo.log 2>&1 &

cd ~/Nautilus
source venv/bin/activate
nohup capitains-nautilus --debug --host 0.0.0.0 --port 5000 /vagrant_data/latinLit >nautilus.log 2>&1 &