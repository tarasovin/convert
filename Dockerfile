FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
ENV GOVERSION 1.12.1
ENV GOROOT /opt/go
ENV GOPATH /root/.go

#Install Locales
#RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
#apt-get update && \
#apt-get -y --no-install-recommends install locales && \
#locale-gen en_US.utf8 && \
#locale-gen ru_RU.utf8 && \
#apt-get clean && \
#apt-get autoclean && \
#rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#ENV LANG='ru_RU.utf8' LANGUAGE='ru_RU:ru' LC_ALL='ru_RU.utf8' TZ='Europe/Moscow'

#Install Golang
RUN apt-get update && \
apt-get -y --no-install-recommends install wget unzip git gcc build-essential && \
cd /opt && wget --no-check-certificate https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz && \
tar zxf go${GOVERSION}.linux-amd64.tar.gz && rm go${GOVERSION}.linux-amd64.tar.gz && \
ln -s /opt/go/bin/go /usr/bin/ && \
mkdir $GOPATH && \
apt-get clean && \
apt-get autoclean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Install Java 1.8
RUN apt-get update && \
apt install -y --no-install-recommends openjdk-8-jdk && \
apt-get clean && \
apt-get autoclean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Install ghostscript, gpcl6, gxps
RUN wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs926/ghostscript-9.26-linux-x86_64.tgz && \
tar zxf ghostscript-9.26-linux-x86_64.tgz && \
rm ghostscript-9.26-linux-x86_64.tgz && \
cd ghostscript-9.26-linux-x86_64 && \
mv ./gs-926-linux-x86_64 /usr/local/bin/ghostscript && \ 
cp /usr/local/bin/ghostscript /usr/local/bin/gs && \
cd .. && \
rm -R ghostscript-9.26-linux-x86_64/ && \
wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs926/ghostpcl-9.26-linux-x86_64.tgz && \
tar zxf ghostpcl-9.26-linux-x86_64.tgz && \
rm ghostpcl-9.26-linux-x86_64.tgz && \
cd ghostpcl-9.26-linux-x86_64 && \
mv ./gpcl6-926-linux-x86_64 /usr/local/bin/gpcl6 && \
mv ./* /usr/local/bin/ && \
cd .. && \
rm -R ghostpcl-9.26-linux-x86_64/ && \
wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs926/ghostxps-9.26-linux-x86_64.tgz && \
tar zxf ghostxps-9.26-linux-x86_64.tgz && \
rm ghostxps-9.26-linux-x86_64.tgz && \
cd ghostxps-9.26-linux-x86_64 && \
mv ./gxps-926-linux-x86_64 /usr/local/bin/gxps && \
mv ./* /usr/local/bin/ && \
cd .. && \
rm -R ghostxps-9.26-linux-x86_64/

#Install PDFTK
RUN echo deb http://archive.ubuntu.com/ubuntu trusty main universe >> /etc/apt/sources.list && \
echo deb http://archive.ubuntu.com/ubuntu trusty-updates main universe >> /etc/apt/sources.list && \
apt-get update && \
apt-get install -y --no-install-recommends --allow-unauthenticated pdftk && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Install ImageMagick
RUN echo deb http://archive.ubuntu.com/ubuntu bionic main restricted >> /etc/apt/sources.list && \
echo deb-src http://archive.ubuntu.com/ubuntu bionic main restricted >> /etc/apt/sources.list && \
apt-get update && \
apt-get build-dep -y imagemagick && \
wget https://www.imagemagick.org/download/ImageMagick.tar.gz && \
tar xf ImageMagick.tar.gz && \
cd ImageMagick-7.0.8-64 && \
./configure && make && make install && \
cd ../ && \
rm -rf ./ImageMagick-7.0.8-64 && \
apt clean all && \
ldconfig /usr/local/lib && \
apt-get clean && \
apt-get autoclean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Install LibreOffice
RUN wget http://download.documentfoundation.org/libreoffice/stable/6.2.5/deb/x86_64/LibreOffice_6.2.5_Linux_x86-64_deb.tar.gz && \
tar zxf LibreOffice_6.2.5_Linux_x86-64_deb.tar.gz && \
rm LibreOffice_6.2.5_Linux_x86-64_deb.tar.gz && \
cd LibreOffice_6.2.5.2_Linux_x86-64_deb/DEBS && \
dpkg -i *.deb && \
rm -R /LibreOffice_6.2.5.2_Linux_x86-64_deb/ && \
apt-get clean && \
apt-get autoclean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install gorun, elvish, gosh, gooxml
RUN go get github.com/mkouhei/gosh && \
go get github.com/erning/gorun && \
go install github.com/erning/gorun && \
go install github.com/mkouhei/gosh && \
mv $GOPATH/bin/gorun /usr/local/bin/gorun && \
mv $GOPATH/bin/gosh /usr/local/bin/gosh && \
go get github.com/unidoc/unioffice && \
go get github.com/unidoc/unidoc/...

# Install xsltproc, xmllint, wkhtmltopdf
RUN apt-get update && \
apt install -y --no-install-recommends xsltproc libxml2-utils wkhtmltopdf xfonts-base xfonts-75dpi && \
apt-get clean && \
apt-get autoclean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb && \
dpkg -i *.deb && \
apt-get clean && \
apt-get autoclean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# RUN mv /etc/ImageMagick/policy.xml /etc/ImageMagick/backup-policy.xml

COPY ./scripts/ /usr/local/bin

RUN mkdir -p /files
WORKDIR /files
VOLUME ["/files"]