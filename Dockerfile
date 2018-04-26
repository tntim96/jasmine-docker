FROM ruby:2.5

LABEL maintainer="tntim96@gmail.com"

RUN apt-get -y update
RUN apt-get -y install git curl vim socat
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g grunt-cli
RUN npm config set registry="http://registry.npmjs.org/"
RUN gem install bundler

EXPOSE 8889
