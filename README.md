## Instructions

Make sure to add a .env file with your huggingface hub token. If you're using docker desktop on windows and want to bind mount the folders, use `/run/desktop/mnt/host/c` as the c drive...
```bash
API_KEY=
HUGGING_FACE_HUB_TOKEN=__YOUR_HF_TOKEN__s
HOME=/run/desktop/mnt/host/c/Users/Max
STORAGE=/run/desktop/mnt/host/c/ML_Software
```

```
docker compose pull
docker compose build
docker compose create
docker compose up -d traefik open-webui litellm

docker compose up -d comfyui
docker compose up -d vllm-mistral7B-instruct 3077-8740M 1930-21207MiB
docker compose up -d vllm-dsr1-qwen7B
docker compose up -d lmdeploy-intern25-4B
docker compose up -d llamacpp-exaone
```
#|  0%   34C    P8             31W /  480W |    1930MiB /  24564MiB |     23%      Default |
Mem:           32057        3077       24724          13        4256       28516
Swap:           8192           4        8187