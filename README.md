
<!-- 
1. Docker Login
2. Docker installation path change
https://dveamer.github.io/backend/DockerImageDirectory.html
 -->

# Docker for A.I. Researcher

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/eungbean/deepo)
![Docker Pulls](https://img.shields.io/docker/pulls/eungbean/deepo)
![GitHub](https://img.shields.io/github/license/eungbean/Docker-for-AI-Researcher)

**"Docker for A.I. Researcher"** is a series of Shell script that  
* allows you to quickly set up your deep learning research environment.  
* supports the next-generation pytorch library, [pytorch-lightning](https://www.pytorchlightning.ai/).  
* supports SSH! Remote work with laptop OUTSIDE of the box.  
* includes fancy terminal setup with oh-my-zsh.  
 
# Demo
[Docker: Try it on Binder](https://mybinder.org/v2/gh/jupyterlab/jupyterlab-demo/master?urlpath=lab/tree/demo)

---
# 1. Requirements

- Nvidia GPU Driver Installation
- 10 minuites
---
# 2. What's inside?
```sh
├── src/
│   ├── Dockerfile
│   └── requirements.txt
├── .env
├── 1_1-install_nvidia_driver.sh
├── 1_2-terminal_setting.sh
├── 2-docker_install.sh
├── 3-docker_build.sh
├── 4-run_docker.sh
└── 5-setting_alias.sh
```

* 1_1-install_nvidia_driver.sh  : Install NVIDIA Driver
* 1_2-terminal_setting.sh       : Setting Terminal with zsh
* 2-docker_install.sh           : Install Docker + NvidiaDocker2
* 3-docker_build.sh             : Build docker image.
* 4-run_docker.sh               : Run Docker Container.
* 5-setting_alias.sh            : Optional. Setting alias for conviniences.

# 3. Quick Start
### step 1. clone the repository

```sh
sudo apt-get install git
git clone https://github.com/eungbean/Docker-for-AI-Researcher
cd Docker-for-AI-Researcher
```

### Step 2. Install NVIDIA Driver and Terminal setup.

```sh
./1_1-install_nvidia_driver.sh
./1_2-terminal_setting.sh
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

### Step 3. Install Docker
```sh
./2-docker_install.sh
```

exact same procedure from [Nvidia Docker 2](https://github.com/NVIDIA/nvidia-docker) [Installation Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#installation-guide).

### Step 4. Configure Your Environment

1. configure bining folders, ports, etc.
```sh
.env
```


2. (Optional) ssh id/password.
*  Initial root user id/password is `root:root`.
  * If you want to change ssh id/password, change line below in `src/Dockerfile`.
  ```dockerfile
  RUN echo 'root:root' |chpasswd
  ```
  * or, change id/password with `passwd` command.

3. (Optional) base docker image.
* If you want to change base images, change 1st line in `src/Dockerfile`.
```dockerfile
FROM pytorchlightning/pytorch_lightning:base-cuda-py3.8-torch1.9
```

### Step 5. Build and run your Docker Container
```sh
./3-docker_build.sh
./4-run_docker.sh
```

* SSH to container will set automatically.

### Step 6. Post Installation
#### 1) Send public key to container.
```sh
ssh-copy-id -p 10022 root@your.ip.add.ress
```
* Initial ssh id/pw is `root/root`.

#### 2) ssh to docker container.

> with ssh
```sh
ssh -p 10022 root@your.ip.add.ress
```
* if you assign 10022 port for ssh, then you can access to your container via 10022 port from your laptop.

> docker exec

```sh
docker exec -it ${CONTAINER_NAME} /usr/bin/zsh
```

#### 3) Change ssh password
`(inside docker container)`
```sh
passwd
```
You have to change password.


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
