#!/usr/bin/env bash   
echo "Installing Apps"
git clone https://github.com/Capitains/flask-capitains-nemo
git clone https://github.com/Capitains/Nautilus
cd flask-capitains-nemo
virtualenv -p python3 venv
source venv/bin/activate
python setup.py develop
cd ../Nautilus 
virtualenv -p python3 venv
source venv/bin/activate
python setup.py develop

