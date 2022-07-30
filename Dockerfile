FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt -y update && apt -y upgrade

# 'ffmpeg libsm6 libxext6' are opencv dependencies
RUN apt install -y python3-pip ffmpeg libsm6 libxext6 git

RUN pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116

RUN pip3 install opencv-contrib-python

WORKDIR /root/object-detection-pytorch

CMD ["tail", "-f", "/dev/null"]