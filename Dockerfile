FROM ubuntu:latest

# install system packages
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Chicago
RUN apt-get update && apt-get install -y rtl-sdr sox vlc
