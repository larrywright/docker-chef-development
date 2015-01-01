FROM ubuntu:14.04.1
MAINTAINER larrywright@gmail.com

RUN apt-get install -y emacs24-nox tmux git-core wget
WORKDIR /tmp
RUN wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.3.5-1_amd64.deb
RUN dpkg -i chefdk_0.3.5-1_amd64.deb
RUN echo 'eval "$(chef shell-init bash)"' >> ~/.bashrc
RUN mkdir /opt/dev
RUN mkdir /src

ADD start.sh /opt/dev/start.sh
ADD tmux.conf /root/.tmux.conf

RUN chmod +x /opt/dev/start.sh
WORKDIR /src
CMD "/opt/dev/start.sh"