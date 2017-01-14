# Base image:
FROM ruby:2.2.6

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set an environment variable where the Rails app is installed to inside of Docker image:
ENV RAILS_ROOT /var/www/pFlix
RUN mkdir -p $RAILS_ROOT

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT

# Gems:
ADD Gemfile $RAILS_ROOT/Gemfile
ADD Gemfile.lock $RAILS_ROOT/Gemfile.lock
RUN bundle install

ADD config/puma.rb $RAILS_ROOT/config/puma.rb

# Copy the main application.
#COPY . .
ADD . /$RAILS_ROOT

EXPOSE 3000

# The default command that gets ran will be to start the Puma server.
#CMD bundle exec puma -C config/puma.rb
