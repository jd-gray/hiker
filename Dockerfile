FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hiker
WORKDIR /hiker
ADD Gemfile /hiker/Gemfile
ADD Gemfile.lock /hiker/Gemfile.lock
RUN bundle install
ADD . /hiker
