# DOCKER INSTALL
# https://docs.docker.com/install/linux/docker-ce/ubuntu/

# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# Install using the repository
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

#Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Verify that you now have the key with the fingerprint:
#9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88
sudo apt-key fingerprint 0EBFCD88

#set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#INSTALL DOCKER ENGINE
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#Update the apt package index:
sudo apt-get update

#Install the latest version of Docker CE
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# 현재 접속중인 사용자에게 권한주기
sudo usermod -aG docker $USER 

# INSTALL NVIDIA-DOCKER2 
# https://github.com/NVIDIA/nvidia-docker

# Add the package repositories
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker

#hello-world
sudo docker run hello-world