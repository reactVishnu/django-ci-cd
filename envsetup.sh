#!/bin/bash

if [ -d "env" ]
then
    echo "Python virtual environment exists."
else
    echo "Installing Python3 Virtual env"
    sudo apt install python3-virtualenv -y
    echo "Creating a virtual environment"
    virtualenv env
fi

echo $PWD
source env/bin/activate

# Check if pip3 is installed
if command -v pip3 &> /dev/null; then
    echo "pip3 is already installed."
else
    echo "Installing pip3"
    sudo apt install -y python3-pip
fi


pip3 install -r requirements.txt

if [ -d "logs" ]
then
    echo "Log folder exists."
else
    mkdir logs
    touch logs/error.log logs/access.log
fi

sudo chmod -R 777 logs