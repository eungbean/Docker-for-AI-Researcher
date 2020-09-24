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
[Jupyterlab Docker: Try it on Binder](https://mybinder.org/v2/gh/jupyterlab/jupyterlab-demo/master?urlpath=lab/tree/demo)

# 1. Requirements

* Nvidia GPU Driver Installation
* 10 minuites

# 2. Quick Start

### step 1. clone the repository
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

### Setp 2. Set your arguments
```sh
./SETTING.sh
```

To install VScode Containier, You need to set `SETUP_DOCKER_VSCODE=true` in `SETTINGS.sh`.
To install Jupyter Containier, You need to set `SETUP_DOCKER_JUPYTERLAB=true` in `SETTINGS.sh`.

* You need to configure variables with `# Required` tag.
* Followings are some examples.

```sh
# DOCKER-VSCODE SETTING
SETUP_DOCKER_VSCODE=true   #REQUIRED
VS_PASSWORD='0000'         #REQUIRED
...
#DOCKER-JUPYTER SETTING
SETUP_DOCKER_JUPYTERLAB=false  #REQUIRED
JP_PASSWORD='0000'         #REQUIRED
```

### Step 3. BOOM!
```sh
./INSTALL.sh
```

that's it. all set!  
Grab some coffee for 10 minuites!

### Step 4. Let's use it!

* VScode Container
**VSCODE**: `http://your.ip.addr.ess:18080`
**Tensorboard**: `http://your.ip.addr.ess:16006`
**SSH**: `ssh -p 10022 root@your.ip.addr.ess`

Without any configuration, initial password is `0000`.  

* Jupyter Container
**Jupyter**: `http://your.ip.addr.ess:28000`
**Tensorboard**: `http://your.ip.addr.ess:26006`
**SSH**: `ssh -p 20022 root@your.ip.addr.ess`

Without any configuration, initial password is `0000`.




#### `1-terminal_setting.sh`
```sh
sudo sh ./01-terminal-setting.sh
```

#### `2-docer_setup.sh`
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

#### `4-run_docker_jupyter.sh` / `4-run_docker_vscode.sh`

deploy your container.

#### `5-setting_alias.sh`

Setup some aliases for convinience.