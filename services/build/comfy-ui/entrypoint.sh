#!/bin/bash

if [ ! -d /data ]; then
    echo "You must mount the the /data volume!"
    exit 1
fi

if [ ! -f /data/venv/bin/activate ]; then
    python3 -m venv --system-site-packages /data/venv
else
    python3 -m venv --system-site-packages --upgrade /data/venv
fi

mkdir -p /data/{custom_nodes,input,models,output,temp,user}

source /data/venv/bin/activate

if [ ! -d /data/custom_nodes/comfyui-manager ]; then
    git -C /data/custom_nodes/ clone --single-branch https://github.com/ltdrdata/ComfyUI-Manager
fi

exec "$@"