FROM ruby:3.0.3
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
RUN npm install --global yarn vim

RUN rm -rf /var/lib/apt/lists/*
WORKDIR /myapp
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
RUN yarn install --check-files
RUN bundle exec rails webpacker:compile
RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids
COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
