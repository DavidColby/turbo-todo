# Dockerfile - instructions to build Docker image
#
FROM ruby:3.0.2
RUN apt-get update -qq && apt-get upgrade -y && apt-get install -y net-tools vim node.js
RUN mkdir /turbo-todo
ADD . /turbo-todo
WORKDIR /turbo-todo
RUN bundle install
RUN bin/rails db:migrate RAILS_ENV=development
CMD /bin/bash -c 'rm -f tmp/pids/server.pid && rails s -p 3000 -b "0.0.0.0"'
