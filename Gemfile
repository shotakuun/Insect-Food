source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.3"

gem "rails", "~> 6.1.6"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.4", require: false
gem "dotenv-rails"
gem "bootstrap", "~> 4.1.1"
gem "sorcery"
gem "rails-i18n"
gem "config"
gem "carrierwave"
gem "sassc", "2.1.0"
gem "fog-aws"
gem "asset_sync"
gem "rails_admin", "~> 2.0"
gem "cancancan"
gem "ransack"
gem "gon"
gem "sentry-ruby"
gem "sentry-rails"
gem "slim-rails"
gem 'meta-tags'
gem 'kaminari', '~> 0.17.0'

group :development, :test do
  gem "irbtools", require: "irbtools/binding"
  gem "annotate"
  gem "pry-byebug"
  gem "html2slim"
  gem "rails_best_practices"
  gem 'rspec-rails', '~> 5.0.0'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'rubocop-rspec-focused', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "rack-mini-profiler", "~> 2.0"
  gem "listen", "~> 3.3"
  gem "spring"
  gem "rails-erd"
  gem "letter_opener_web", "~> 1.0"
  gem "brakeman", require: false
end

group :test do
  gem "rspec-rails", "~> 5.0.0"
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver", ">= 4.0.0.rc1"
  gem "webdrivers"
  gem "factory_bot_rails"
  gem "faker"
  gem "simplecov", require: false, group: :test
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
