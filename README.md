
<!-- 
1. Docker Login
2. Docker installation path change
https://dveamer.github.io/backend/DockerImageDirectory.html
 -->

# Docker for A.I. Researcher

![Docker Build Status](https://img.shields.io/docker/build/eungbean/deepo)
![Docker Automated build](https://img.shields.io/docker/automated/eungbean/deepo)
![Docker Pulls](https://img.shields.io/docker/pulls/eungbean/deepo)
![GitHub](https://img.shields.io/github/license/eungbean/Docker-for-AI-Researcher)

**"Docker for A.I. Researcher"** is a series of Shell script that  
_ allows you to quickly set up your deep learning research environment  
_ supports almost [all commonly used deep learning frameworks](https://github.com/eungbean/Docker-for-AI-Researcher#Available-tags) with GPU acceleration (CUDA and cuDNN included)  
_ supports the next-generation web-based user interface IDE, [Jupyter-lab](https://jupyterlab.readthedocs.io/en/stable/)  
_ supports remote work with laptop OUTSIDE of the lab  
 \* includes fancy terminal setup with oh-my-zsh.

# Demo
[Jupyterlab Docker: Try it on Binder](https://mybinder.org/v2/gh/jupyterlab/jupyterlab-demo/master?urlpath=lab/tree/demo)

---
# 1. Requirements

- Nvidia GPU Driver Installation
- 10 minuites
---
# 2. Quick Start
### step 1. clone the repository

```sh
sudo apt-get install git
git clone https://github.com/eungbean/Docker-for-AI-Researcher
cd Docker-for-AI-Researcher
```

<<<<<<< HEAD
### Step 2. Install NVIDIA Driver, Terminals.

```sh
sudo sh scripts/1-basic_install.sh
```

Install following packages.

- NVidia Driver
- Terminal tools
  - zsh
  - oh-my-zsh
  - zsh-syntax-highlighting
  - zsh-autosuggestions
  - neovim
  - spacevim
  - powerline font
- GPU Monitoring tools
  - gpustat
  - glances
- git
- openssh
=======
---
### Setp 2. Set your arguments
>>>>>>> origin/master

### Step 3. Install Docker
```sh
sudo sh scripts/2-docker_install.sh
```

<<<<<<< HEAD
exact same procedure from [Nvidia Docker 2](https://github.com/NVIDIA/nvidia-docker) [Installation Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#installation-guide).
=======
* Set your SSH Password to `SETUP_DOCKER_VSCODE='root'`
* To install VScode Containier, You need to set `SETUP_DOCKER_VSCODE=true` in `SETTINGS.sh`.
>>>>>>> origin/master


### Step 4. Configure Your Environment
```sh
<<<<<<< HEAD
.env
```

### Step 5. Build and run your Docker Container
=======
##############################
SET_1_TERMINAL_SETTING='false'
SET_2_DOCKER_INSTALL='false'
SET_3_VSCODE_CONTAINER_BUILD='true'
SET_4_VSCODE_CONTAINER_RUN='true'
SET_5_SETTING_ALIAS='false'
##############################

# DOCKER-VSCODE SETTING
SETUP_DOCKER_VSCODE='true'   #REQUIRED
VS_PASSWORD='root'         #REQUIRED
...
```

---

### Step 3. BOOM!
>>>>>>> origin/master

```sh
sudo sh scripts/3-docker_build.sh
sudo sh scripts/4-run_docker.sh
```

<<<<<<< HEAD
* Initial id/password is `root:root`.
* please change it using `passwd' command inside the containder.
* SSH to container will be automatically set up: `ssh -p 10022 root@localhost` and password `root`.

#### 1) Send ssh key to container
```sh
ssh-copy-id -p 10022 -i ~/.ssh/id_rsa root@your.ip.add.ress
=======
that's it. all set!  
Grab some coffee for 10 minuites!

---

### Step 4. Post Installation

#### 1) Send ssh key to container
```sh
ssh-copy-id -i ~/.ssh/id_rsa -p 10022 root@your.ip.add.ress
>>>>>>> origin/master
```

#### 2) Get inside docker container

> with ssh

```sh
ssh -p 10022 root@your.ip.add.ress
```

* Initial ssh id/pw is `root/root`.
* if you open 10022 port to the world, then you can access to your container via 10022 port from your laptop.

> docker exec

```sh
docker exec -it ${CONTAINER_NAME} /usr/bin/zsh
```

#### 3) Change ssh password
```
(inside docker container)
passwd
```
You have to set your own password.



<!-- 
---
# 3. More Detailed..

#### `1-terminal_setting.sh`

```sh
sudo sh ./01-terminal-setting.sh
```

Install following packages..

- Open SSH
- Terminal tools
  - zsh
  - oh-my-zsh
  - zsh-syntax-highlighting
  - zsh-autosuggestions
  - neovim
  - spacevim
  - powerline font
- GPU Monitoring tools
  - gpustat
  - glances
- git

---

#### `2-docker_setup.sh`

```sh
sudo sh ./02-docker-setup.sh
```

> Install followings..

- [Docker-ce](https://docs.docker.com/install/linux/docker-ce/ubuntu)
- [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)

If the installation is done, the message will be displayed.

```sh
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
...
```

---

#### `3-build_docker_jupyter.sh` / `3-build_docker_vscode.sh`

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

---

#### `4-run_docker_jupyter.sh` / `4-run_docker_vscode.sh`

deploy your container.

---

#### `5-setting_alias.sh`

Setup some aliases for convinience. -->
