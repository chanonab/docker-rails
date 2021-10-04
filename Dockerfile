# Load the Docker image.
FROM ruby:2.7.1-alpine3.12

# Define environment variables.
ENV LANG C.UTF-8
ENV PS1 '▶ '
ENV RAILS_ROOT /docker-rails
ENV BUNDLE_PATH /usr/local/bundle

# Install Packages.
RUN apk update && apk upgrade && apk add --update --no-cache \
    build-base \
    curl-dev \
    linux-headers \
    libxml2-dev \
    libxslt-dev \
    postgresql-dev \
    ruby-dev \
    yaml-dev \
    graphviz \
    zlib-dev \
    bash \
    git \
    openssh \
    postgresql \
    ruby-json \
    tzdata \
    vim \
    nodejs \
    yaml \
    curl \
    imagemagick \
    yarn --repository="http://dl-cdn.alpinelinux.org/alpine/edge/community" \
    libc6-compat && ln -s /lib/libc.musl-x86_64.so.1 /lib/ld-linux-x86-64.so.2

# Set up a work directory.
RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT

# Install Gems
ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install -j4

# Install Yarns
COPY package.json .
COPY yarn.lock .
RUN yarn

# Copy the source code.
ADD . $RAILS_ROOT