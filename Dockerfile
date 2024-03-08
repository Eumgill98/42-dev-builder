FROM ubuntu:22.04

COPY header_info.txt /header_info.txt

RUN apt-get update \ 
    && apt-get install -y man-db \ 
    && apt-get install -y gcc \
    && apt-get install -y clang \
    && apt-get install -y vim \
    && apt-get install -y git \
    && git clone https://github.com/42Paris/42header.git 42_header\
    && mkdir -p ~/.vim/plugin \
    && cp /42_header/plugin/stdheader.vim ~/.vim/plugin/ \
    && cat /header_info.txt >> ~/.zshrc \
    && rm -rf /var/lib/apt/lists/* \
    && source ~/.zshrc

# 작업 디렉토리 설정
WORKDIR /42