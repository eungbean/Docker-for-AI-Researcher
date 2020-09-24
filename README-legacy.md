# Docker for A.I. Researcher

![Docker Build Status](https://img.shields.io/docker/build/eungbean/deepo)
![Docker Automated build](https://img.shields.io/docker/automated/eungbean/deepo)
![Docker Pulls](https://img.shields.io/docker/pulls/eungbean/deepo)
![GitHub](https://img.shields.io/github/license/eungbean/Docker-for-AI-Researcher)

__"Docker for A.I. Researcher"__ is a series of Shell script that
    * allows you to quickly set up your deep learning research environment
    * supports almost (all commonly used deep learning frameworks)[https://github.com/eungbean/Docker-for-AI-Researcher#Available-tags] with GPU acceleration (CUDA and cuDNN included)
    * supports the next-generation web-based user interface IDE, [Jupyter-lab](https://jupyterlab.readthedocs.io/en/stable/)
    * supports remote work with laptop OUTSIDE of the lab
    * includes fancy terminal setup with oh-my-zsh.

# Demo
[Try it on Binder](https://mybinder.org/v2/gh/jupyterlab/jupyterlab-demo/master?urlpath=lab/tree/demo)

# 1. Requirements

* Ubuntu OS 18.04
* Nvidia GPU Driver Installation
* 10 minuites

# 2. Quick Start

#### step 1. clone the repository
```sh
sudo apt-get install git
git clone https://github.com/eungbean/Docker-for-AI-Researcher
cd Docker-for-AI-Researcher
```

Install following packages..
* Terminal tools
  * zsh
  * oh-my-zsh
  * zsh-syntax-highlighting
  * zsh-autosuggestions
  * neovim  
  * spacevim  
  * powerline font
* GPU Monitoring tools   
  * gpustat  
  * glances
* git  
* ssh

#### Step 2. Terminal Setup
```sh
sudo sh ./01-terminal-setting.sh
```

#### Step 3. Docker Installation
```sh
sudo sh ./02-docker-setup.sh
```
Install followings..
* [Docker-ce](https://docs.docker.com/install/linux/docker-ce/ubuntu)
* [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)

If the installation is done, the message will be displayed.
```sh
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
...
```

#### Step 4. Pull the Docker image

I strongly recommend to use [ufoym/deepo](https://github.com/ufoym/deepo) image from scratch.  
This image supports almost all commonly used deep learning frameworks.



```sh
sudo docker pull ufoym/deepo:all-jupyter
```

---

In addition to ufoym/deepo image, I made my own docker image called [eungbean/deepo:lab]().
This image includes more useful packages to start with.
It will reduce your time to set up initial research environment.  
Trust me, you'll happy with it.

```sh
sudo docker pull ufoym/deepo:all-jupyter
```



#### 