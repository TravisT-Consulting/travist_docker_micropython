FROM travistconsulting/travist_docker_mp_cp_base

# Avoid user input needed only during build
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /build

RUN git clone --recurse-submodules https://github.com/micropython/micropython.git
RUN git -C micropython checkout 2e3f2045f9a7511987e69a8be0d3d117502e4bb1
RUN make -C micropython/mpy-cross/
RUN make -C micropython/ports/unix/