source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.1', '>= 4.1.1'
gem 'pg', '0.18.4'
gem 'simple_form'
gem 'devise'
gem "font-awesome-rails"
gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
gem "font-ionicons-rails"

#Internationalization (I18n)
gem 'rails-i18n', '~> 5.1', '>= 5.1.1'

#Paginations
gem 'will_paginate', '~> 3.1.0'

#i18n Helpers
gem 'i18n_rails_helpers'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller' 
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
