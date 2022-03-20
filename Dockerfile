FROM ubuntu:20.04

# Avoid user input needed only during build
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gcc-arm-none-eabi \
    build-essential \
    libffi-dev \
    pkg-config \
    git \
    python3-pip \
    python3-dev

WORKDIR /build

RUN git clone --recurse-submodules https://github.com/micropython/micropython.git
RUN git -C micropython checkout v1.18
RUN make -C micropython/mpy-cross/
RUN make -C micropython/ports/unix/