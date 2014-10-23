# super simple base
FROM ubuntu:14.04
MAINTAINER James Oguya<oguyajames@gmail.com>

# use local luquidtelcom mirror
COPY sources.list /etc/apt/sources.list

# Add gpg key for ubuntu extras
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 16126D3A3E5C1192

# update cache & upgrade base os
RUN apt-get update && apt-get -y upgrade

# install most basic packages
RUN apt-get install --no-install-recommends --ignore-missing --yes git vim debian-goodies safe-rm
