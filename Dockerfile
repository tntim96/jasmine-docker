FROM ruby:2.5

RUN apt-get -y update
RUN apt-get -y install git curl vim
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g grunt-cli
RUN npm config set registry="http://registry.npmjs.org/"
RUN gem install bundler

EXPOSE 8888
