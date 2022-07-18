#!/bin/sh

sudo yum -y install gcc curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker autoconf
sudo yum -y install wget
sudo yum -y install make
cd /opt/
sudo wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.37.0.tar.gz
sudo tar xzvf git-2.37.0.tar.gz
sudo rm git-2.37.0.tar.gz
cd git-2.37.0/
sudo make prefix=/usr/local all
sudo make prefix=/usr/local install
git --version

