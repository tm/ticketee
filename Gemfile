source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'


gem 'rack', '1.3.3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'dynamic_form'

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
#
group :development do
  gem 'capistrano'
end

group :production do
  gem 'pg'
end

group :test, :development do
gem 'sqlite3'
  gem 'gmail'
  gem 'rspec-rails', '~> 2.5'
end

group :test do
  gem 'cucumber-rails', '1.0.6'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl'
  gem 'email_spec'
  gem 'launchy'
end

gem 'devise', '~> 1.4.3'
gem 'cancan'
gem 'paperclip'
gem 'searcher'
gem 'kaminari'
gem 'oa-oauth', :require => "omniauth/oauth"
gem 'delayed_job'
