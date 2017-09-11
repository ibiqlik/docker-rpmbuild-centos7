FROM centos:7

MAINTAINER Ilir Bekteshi (ibi@qlik.com)

RUN yum -y update && \
    yum install -y \
    rpmdevtools \
    rpm-build \
    unzip \
    && yum clean all 

RUN adduser -G wheel rpmbuilder
ADD .rpmmacros /home/rpmbuilder/
USER rpmbuilder

WORKDIR /home/rpmbuilder
