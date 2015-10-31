FROM ubuntu:latest

RUN useradd -d /home/radare2 -m radare2
ENV USER radare2
ENV HOME /home/radare2

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y software-properties-common python-all-dev wget swig flex bison git gcc g++ make pkg-config glib-2.0 python-gobject-dev valgrind gdb build-essential ipython ipython3 python-pip python3-pip

ENV VALA_TAR=vala-0.26.1
RUN cd /tmp &&  wget https://download.gnome.org/sources/vala/0.26/${VALA_TAR}.tar.xz && shasum ${VALA_TAR}.tar.xz | grep -q 0839891fa02ed2c96f0fa704ecff492ff9a9cd24 && tar -Jxf ${VALA_TAR}.tar.xz
RUN cd /tmp/${VALA_TAR}; ./configure --prefix=/usr ; make && make install

COPY src /opt/radare2
RUN cd /opt/radare2; ./sys/all.sh;

RUN pip install r2pipe
RUN pip3 install r2pipe

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN r2 -V

WORKDIR /home/radare2/workspace

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/bash"]
