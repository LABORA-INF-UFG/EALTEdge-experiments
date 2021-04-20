#!/bin/bash

echo " --- installing dependencies ..."
sudo apt-get update -y && apt-get upgrade -y
sudo apt install software-properties-common -y

echo " --- installing python3 and pip3 ..."
sudo apt install python3-pip -y
pip3 --version

echo " --- ansible ..."
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
ansible --version

echo " --- installing golang"
sudo add-apt-repository --yes ppa:longsleep/golang-backports
sudo apt install golang-go -y
go version

echo " --- installing kubectl"
sudo snap install kubectl --classic
