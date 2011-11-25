source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
	gem 'pg'
  # gem 'hpricot'
	# gem 'ruby_parser'
	gem 'cucumber-rails', '>= 1.1.0'
	gem 'capybara', '>= 1.1.1'
	# gem "cucumber_factory"
	gem 'rspec-rails'
	gem 'database_cleaner'
	gem 'factory_girl_rails'
	gem 'selenium-client'
	gem 'selenium-webdriver', '>= 2.8.0'
	gem 'pickle'
	gem 'akephalos2', '>= 2.0.5', :require => 'akephalos'
	gem 'simplecov'
	gem 'foreman'
end
