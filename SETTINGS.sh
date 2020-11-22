#!/bin/bash
##############################
#######['true','false']#######
##############################
SET_1_TERMINAL_SETTING='false'
SET_2_DOCKER_INSTALL='false'
SET_3_VSCODE_CONTAINER_BUILD='true'
SET_4_VSCODE_CONTAINER_RUN='true'
SET_5_SETTING_ALIAS='false'
##############################


#GLOBAL SETTING
GPUS='1' # ['all','0', '1', ...] # How many GPUs you want to use. [https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/user-guide.html]
DOCKER_BUILD_WITH_PULL='false' #['true','false']
SETTING_ALIAS='true'
SSH_PASSWORD='root'

# -v ${PROJ_DIR}:~/
PROJ_DIR_HOST='~/'         #REQUIRED
PROJ_DIR_CONTAINER='~/'

# DOCKER-VSCODE SETTING
VS_PASSWORD='root'         #REQUIRED
VS_CONTAINER_NAME='code_dl'
VS_IMAGE_NAME='deepo:code'

VS_DEFAULT_PORT_HOST='10022'
VS_CODE_PORT_HOST='18080'
VS_TB_PORT_HOST='16006'

#MISC
#Alias Names customizing
ALIAS_NVIDIA_SMI='gpu'
ALIAS_GPUSTAT='gpu2'

if [ $DOCKER_BUILD_WITH_PULL = 'true' ]
then
    VS_IMAGE_NAME='eungbean/deepo:code'
fi  