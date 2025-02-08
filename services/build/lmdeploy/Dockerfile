ARG LMDEPLOY_VERSION=latest
ARG CUDA_VERSION=cu12

FROM openmmlab/lmdeploy:${LMDEPLOY_VERSION}-cu12 AS cu12
ENV CUDA_VERSION_SHORT=cu123

FROM openmmlab/lmdeploy:${LMDEPLOY_VERSION}-cu11 AS cu11
ENV CUDA_VERSION_SHORT=cu118

FROM ${CUDA_VERSION} AS final

RUN python3 -m pip install timm

RUN python3 -m pip install https://github.com/Dao-AILab/flash-attention/releases/download/v2.6.3/flash_attn-2.6.3+${CUDA_VERSION_SHORT}torch2.3cxx11abiFALSE-cp310-cp310-linux_x86_64.whl

RUN sed -i -e"s/self.logger.warning(f'The token/get_logger('lmdeploy').warning(f'The token/"  /opt/lmdeploy/lmdeploy/tokenizer.py