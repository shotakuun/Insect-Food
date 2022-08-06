FROM ruby:3.0.3

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get update -qq \
    && apt-get install -y nodejs \
    && npm install -g yarn

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /myapp
COPY Gemfile Gemfile.lock /
RUN gem install bundler:2.3.17 \
    && bundle install

RUN bundle exec rails webpacker:compile \
    && mkdir -p tmp/sockets && mkdir -p tmp/pids && . /

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
