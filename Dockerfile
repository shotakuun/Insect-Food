FROM ruby:3.0.3
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs vim graphviz
RUN npm install --global yarn

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
