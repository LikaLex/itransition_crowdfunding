source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
# Use sqlite3 as the database for Active Record
gem 'pg', '0.21.0'
gem 'pg_search'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'devise', '4.3.0'
gem 'devise-bootstrapped', '0.1.1'
gem 'letter_opener', '1.4.1'
gem 'slim'
gem 'commontator', '~> 4.11.1', git: 'git@github.com:jdugarte/commontator.git'
gem 'simple_form', '~> 3.2'
gem 'ckeditor', '~> 4.1'

#gem 'ransack'
gem "simple_calendar", "~> 2.0"
gem 'i18n'
gem 'russian', '~> 0.6.0'

gem 'jquery-rails'
gem 'haml-rails'
gem 'twitter-bootstrap-rails'

gem 'pundit'
gem 'administrate'
gem 'carrierwave'
gem 'mini_magick'
gem 'bootstrap-datepicker-rails'


group :development, :test do
  gem 'pry-rails'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end
