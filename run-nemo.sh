#!/usr/bin/env bash   
sudo pkill -f capitains-nemo
cd ~/flask-capitains-nemo
source venv/bin/activate
nohup capitains-nemo --debug --host 0.0.0.0 --port 8100 --css /home/vagrant/flask-capitains-nemo/examples/tei.pb.min.css http://localhost:5000 >nemo.log 2>&1 &

