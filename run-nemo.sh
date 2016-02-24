#!/usr/bin/env bash   
sudo pkill -f capitains-nemo
cd ~/flask-capitains-nemo
source venv/bin/activate
nohup capitains-nemo --host 0.0.0.0 --port 8100 http://localhost:5000 >nemo.log 2>&1 &

