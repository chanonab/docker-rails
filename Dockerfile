# Load the Docker image.
FROM ruby:2.7.1-alpine3.12

# Define environment variables.
ENV LANG C.UTF-8
ENV PS1 '▶ '

# Install Packages.
RUN apk update && apk upgrade && apk add --update --no-cache \
    build-base \
    postgresql-dev \
    tzdata \
    nodejs \
    yarn

# Install Rails.
RUN gem install rails

# Set up a work directory.
WORKDIR /docker-rails