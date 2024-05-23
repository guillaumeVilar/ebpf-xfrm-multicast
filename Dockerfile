# Use the official Alpine image as the base image
# docker build -t alpine-bpf-python-tcpdump .
# To test: docker run -it --rm --privileged --net=host alpine-bpf-python-tcpdump

FROM alpine:3.19.1

# Install necessary packages
RUN apk update && \
    apk add --no-cache \
        bash \
        build-base \
        linux-headers \
        libpcap-dev \
        tcpdump \
        python3 \
        py3-pip \
        bcc-tools bcc-doc \
        bpftool \
        py3-pyroute2 \
        iproute2 \
        openrc \
        clang \
        elfutils-dev


# Set up a working directory
WORKDIR /app

# Copy any necessary files (if you have any scripts to include)
# COPY . /app

# Set the entrypoint to a bash shell
ENTRYPOINT ["/bin/bash"]