FROM       ubuntu:latest
MAINTAINER "Andrey Tarasov" "a.a.tarasov@list.ru"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get -y upgrade

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
apt-get update && \
apt-get -y dist-upgrade && \
apt-get -y install locales wget unzip mc && \
locale-gen en_US.utf8 && \
locale-gen ru_RU.utf8 && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*
ENV LANG='ru_RU.utf8' LANGUAGE='ru_RU:ru' LC_ALL='ru_RU.utf8' TZ='Europe/Moscow'

#Install Java 1.8
RUN \
  apt-get update && \
  apt install -y openjdk-8-jdk

RUN apt-get update
RUN apt-get install -y wget git gcc build-essential

ENV GOVERSION 1.12.1
ENV GOROOT /opt/go
ENV GOPATH /root/.go

RUN cd /opt && wget https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz && \
    tar zxf go${GOVERSION}.linux-amd64.tar.gz && rm go${GOVERSION}.linux-amd64.tar.gz && \
    ln -s /opt/go/bin/go /usr/bin/ && \
    mkdir $GOPATH

RUN echo deb http://archive.ubuntu.com/ubuntu trusty main universe > /etc/apt/sources.list	
RUN echo deb http://archive.ubuntu.com/ubuntu trusty-updates main universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --allow-unauthenticated pdftk
RUN apt-get install -y --allow-unauthenticated imagemagick
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs926/ghostscript-9.26-linux-x86_64.tgz \
&& tar zxf ghostscript-9.26-linux-x86_64.tgz && rm ghostscript-9.26-linux-x86_64.tgz && \
cd ghostscript-9.26-linux-x86_64 && mv ./gs-926-linux-x86_64 /usr/local/bin/ghostscript \ 
&& cp /usr/local/bin/ghostscript /usr/local/bin/gs

RUN wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs926/ghostpcl-9.26-linux-x86_64.tgz \
&& tar zxf ghostpcl-9.26-linux-x86_64.tgz && rm ghostpcl-9.26-linux-x86_64.tgz && \
cd ghostpcl-9.26-linux-x86_64 && mv ./gpcl6-926-linux-x86_64 /usr/local/bin/gpcl6 && mv ./* /usr/local/bin/

RUN wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs926/ghostxps-9.26-linux-x86_64.tgz \
&& tar zxf ghostxps-9.26-linux-x86_64.tgz && rm ghostxps-9.26-linux-x86_64.tgz && \
cd ghostxps-9.26-linux-x86_64 && mv ./gxps-926-linux-x86_64 /usr/local/bin/gxps && mv ./* /usr/local/bin/

# RUN apt-get install -y --allow-unauthenticated libxext6
# RUN wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs926/ghostpdl-9.26.tar.gz \
# && tar zxf ghostpdl-9.26.tar.gz && rm ghostpdl-9.26.tar.gz && \
# cd ghostpdl-9.26 && ./configure && make && make install

RUN wget http://libreoffice-mirror.rbc.ru/pub/libreoffice/libreoffice/stable/6.2.1/deb/x86_64/LibreOffice_6.2.1_Linux_x86-64_deb.tar.gz \
&&  tar zxf LibreOffice_6.2.1_Linux_x86-64_deb.tar.gz && rm LibreOffice_6.2.1_Linux_x86-64_deb.tar.gz && \
cd LibreOffice_6.2.1.2_Linux_x86-64_deb/DEBS && dpkg -i *.deb && \
rm -R /LibreOffice_6.2.1.2_Linux_x86-64_deb/

# Install Gorun and Elvish
RUN go get github.com/mkouhei/gosh
RUN go get github.com/erning/gorun
RUN go get github.com/elves/elvish
RUN cd `go env GOPATH`/src/github.com/elves/elvish && make get
RUN go install github.com/erning/gorun
RUN go install github.com/elves/elvish
RUN go install github.com/mkouhei/gosh
RUN mv $GOPATH/bin/gorun /usr/local/bin/gorun
RUN mv $GOPATH/bin/elvish /usr/local/bin/elvish
RUN mv $GOPATH/bin/gosh /usr/local/bin/gosh

RUN go get baliance.com/gooxml/
RUN go build -i baliance.com/gooxml/...

RUN mv /etc/ImageMagick/policy.xml /etc/ImageMagick/backup-policy.xml

COPY ./scripts/ /usr/local/bin

RUN mkdir /files
WORKDIR /files
VOLUME ["/files"]

