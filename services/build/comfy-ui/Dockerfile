FROM nvidia/cuda:12.6.3-cudnn-devel-ubuntu24.04 

RUN apt-get update && apt-get install -y git python3-pip python3-venv vim-nox wget curl ffmpeg libavcodec-extra libavfilter-extra libavformat-extra && apt-get distclean

ARG COMFYUI_BRANCH=v0.3.13
RUN git -C /opt/ clone --single-branch --branch $COMFYUI_BRANCH https://github.com/comfyanonymous/ComfyUI.git
RUN python3 -m pip install --root-user-action=ignore --break-system-packages -r /opt/ComfyUI/requirements.txt --extra-index-url https://download.pytorch.org/whl/cu126

EXPOSE 8818
WORKDIR /root
COPY ./entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "/data/venv/bin/python3", "/opt/ComfyUI/main.py", "--listen", "--base-directory", "/data/", "--verbose", "DEBUG"]