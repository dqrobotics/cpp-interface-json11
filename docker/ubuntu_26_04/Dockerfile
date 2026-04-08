FROM ubuntu:resolute
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"

# Update apt-get
RUN apt-get update -q \
    && apt-get upgrade -y

RUN apt-get install -y dpkg-dev libeigen3-dev cmake wget software-properties-common git

# Install dqrobotics
RUN add-apt-repository ppa:dqrobotics-dev/development  \
  && apt-get update  \
  && apt-get install -y libdqrobotics

COPY . /root/dqrobotics/cpp-interface-json11
RUN cd /root/