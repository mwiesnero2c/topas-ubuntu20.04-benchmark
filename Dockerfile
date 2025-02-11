FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
 apt install -y wget git libboost-python-dev python3-dev python-yaml fontconfig python3-pip time apt-utils
RUN apt update && apt install -y libopenblas-base libsuperlu-dev && \
    wget -q -O worhp_1.14-0~ubuntu2004.deb https://seafile.zfn.uni-bremen.de/f/0171f8b47c114aa282a5/?dl=1 && \
    chmod +x worhp_1.14-0~ubuntu2004.deb && apt-get install -y ./worhp_1.14-0~ubuntu2004.deb
RUN pip3 install conan numpy matplotlib datetime mysql-connector-python regex 
ENV LANG en_US.utf-8
