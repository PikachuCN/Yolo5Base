FROM python:3.9.10-slim-buster
LABEL maintainer="happy61@gmail.com"
RUN python -m pip install --upgrade pip
RUN pip3 install torch==1.11.0+cu113 torchvision==0.12.0+cu113 torchaudio==0.11.0+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
RUN apt update
RUN apt install libgl1-mesa-glx libglib2.0-dev sudo -y
# 初始化安装信息

# 复制核心文件并安装依赖
COPY yolo5 /yolo5
# COPY model /model
# COPY main.py main.py
RUN pip3 install -r /yolo5/requirements.txt
RUN pip install uvicorn fastapi python-multipart
COPY Arial.ttf /root/.config/Ultralytics/Arial.ttf
# CMD ["python", "main.py"]

