source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'unicorn'
gem 'puma'
gem 'rails_12factor', group: :production
gem 'newrelic_rpm'
gem 'psych', '~> 2.0.5'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# gem 'rack-queue-metrics', path: "../../Heroku/rack-queue-metrics"
gem 'rack-queue-metrics', git: "https://github.com/heroku/rack-queue-metrics.git", branch: "cb-logging"
# gem 'rack-latency', git: "https://github.com/chadbailey59/rack-latency.git"
# gem 'rack-latency', path: "../../Heroku/rack-latency"
gem 'rack-latency', '~> 0.0.4'
gem 'rack-timing'
gem 'librato-rails'
