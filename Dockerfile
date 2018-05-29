# Copied from: https://blog.blindside.io/developing-a-ruby-on-rails-app-with-docker-compose-d75b20334634

FROM ruby:2.4-alpine

RUN apk add --update build-base postgresql-dev tzdata sqlite-dev nodejs libcurl
RUN gem install rails -v '5.1.2'

WORKDIR /app
ADD . .
#RUN gem install sqlite3-ruby byebug rspec-rails capistrano capistrano-rvm capistrano-rails
#RUN gem install capistrano3-puma capistrano-rails-collection better_errors binding_of_caller listen
#RUN gem instal pg rails_12factor bundler sass-rails compass-rails coffee-rails
RUN gem install rubygems-bundler && bundle install
RUN mkdir -p /tmp/sockets && touch /tmp/sockets/puma.sock
CMD ["rails server"]