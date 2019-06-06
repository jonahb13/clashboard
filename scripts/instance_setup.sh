#!/bin/bash

apt update
apt install -y python3-pip
apt install -y postgresql
apt install -y unzip
cd clashboard
pip3 install -r requirements.text
pip3 install -e .
echo -e "hostname=localhost\nport=5432\ndatabase=aact\nusername=postgres\npassword=your_password" > .env
