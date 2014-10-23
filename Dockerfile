# super simple base
FROM ubuntu:14.04
MAINTAINER James Oguya<oguyajames@gmail.com>

# use local luquidtelcom mirror, update cache & upgrade base
COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get -y upgrade

# install most basic packages
RUN apt-get install --no-install-recommends --ignore-missing --yes git vim debian-goodies safe-rm
