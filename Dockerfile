FROM centos:7
MAINTAINER Jovi gu <gb000000@hotmail.com>

COPY *.repo /etc/yum.repos.d/
COPY RPM-GPG-KEY-oracle-ol7 /etc/pki/rpm-gpg/RPM-GPG-KEY-oracle

RUN yum install -y oracle-instantclient18.3-basic oracle-instantclient18.3-devel oracle-instantclient18.3-jdbc oracle-instantclient18.3-sqlplus
RUN yum install -y perl perl-ExtUtils-CBuilder perl-ExtUtils-MakeMaker

ADD share.tar.gz /
ENV ORACLE_HOME=/usr/lib/oracle/18.3/client64
ENV LD_LIBRARY_PATH=/usr/lib/oracle/18.3/client64/lib

RUN ["yum", "clean", "all"] 
RUN rm -rf /tmp/*
