# frozen_string_literal: true

threads_count = ENV.fetch('RAILS_MAX_THREADS', 5).to_i
threads threads_count, threads_count
port ENV.fetch('PORT', 3000)
environment ENV.fetch('RAILS_ENV', 'development')
plugin :tmp_restart

app_root = File.expand_path('..', __dir__)
bind "unix://#{app_root}/tmp/sockets/puma.sock"

unless ENV.fetch('RAILS_ENV', 'development') == 'development'
  stdout_redirect "#{app_root}/log/puma.stdout.log", "#{app_root}/log/puma.stderr.log", true
end
