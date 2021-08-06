FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y git curl && \
    cd /root && \
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz && \
    tar xzf nvim-linux64.tar.gz && \
    echo "PATH=/root/nvim-linux64/bin:$PATH" >> /root/.bashrc
COPY init.lua /root/.config/nvim/init.lua
COPY demo.fnl /root/demo.fnl
