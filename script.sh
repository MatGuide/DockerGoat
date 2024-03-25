#!/bin/bash


if ! command -v docker &> /dev/null
then
	sudo apt-get update -y
	sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-hey add - -y
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	sudo apt install docker.io -y
	docker --version
else
	echo "Docker is installed"
fi
