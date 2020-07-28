# DreamHack WRITE-UP ubuntu:19.10
FROM ubuntu:19.10

# PACKAGE
RUN apt-get update &&\
  apt-get -qq -y install git curl build-essential gcc gcc-multilib ruby \
  python2.7 python-pip python-dev libssl-dev libffi-dev \
  gdb vim wget net-tools libc6-dbg libc6-dbg:i386

# PIP [pwntools][ropgadget]
RUN pip install --upgrade pip && \
  pip install --upgrade pwntools && \
  pip install --upgrade ropgadget

# WOKRDIR worspace
RUN mkdir -p /workspace/binExploit
WORKDIR /workspace

# GEM [one_gadget]
RUN git clone https://github.com/david942j/one_gadget.git
RUN cd one_gadget
RUN gem install one_gadget

#peda, pwngdb
WORKDIR /
RUN git clone https://github.com/longld/peda.git ~/peda
RUN cd ~/
RUN git clone https://github.com/scwuaptx/Pwngdb.git
RUN cp ~/Pwngdb/.gdbinit ~/

#gdb setting
RUN echo "set disassembly-flavor intel" >> ~/.gdbinit

# architecture i386
RUN dpkg --add-architecture i386
RUN apt-get -y install libc6-dbg libc6-dbg:i386