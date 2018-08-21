FROM opensuse/leap:42.3

RUN zypper in -y git \
        xz \
        rpm \
        wget \
        tar

RUN wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.10.3.linux-amd64.tar.gz && export PATH=$PATH:/usr/local/go/bin

ADD ./go/bin/clair /usr/bin
ADD ./config.yaml /root

EXPOSE 6060
CMD ["/usr/bin/clair", "--config=/root/config.yaml"]
