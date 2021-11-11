FROM ubuntu:focal

LABEL maintainer="Barry Weiss <barweiss@cisco.com>"
LABEL version="1.0"
LABEL description="Container to be used with barewiss45/Ansible-IOSXE-Always-On-Demo repo"

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
RUN apt-get update; apt-get install -y git make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

WORKDIR /root/

RUN mkdir .pyenv
RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv

ENV PYENV_ROOT /root/.pyenv
ENV PATH /root/.pyenv/bin:/root/.pyenv/shims:$PATH

RUN eval "$(pyenv init -)"
RUN pyenv install 3.6.10
RUN pyenv global 3.6.10

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt 

RUN mkdir Ansible-IOSXE-Always-On-Demo
RUN git clone https://github.com/barweiss45/Ansible-IOSXE-Always-On-Demo.git Ansible-IOSXE-Always-On-Demo

CMD ["bash"]
