source 'https://rubygems.org'
ruby '2.6.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '~> 4.0.0.beta2'
gem 'haml-rails'
gem 'jquery-rails'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.2.1'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'rename'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'faker', git: 'https://github.com/stympy/faker.git'
  gem 'pry'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'fuubar'
  gem 'launchy'
  gem 'poltergeist'
  gem 'rspec'
  gem 'rspec-its'
  gem 'rspec-rails'
  gem 'shoulda-matchers', '~> 2.0'
end

group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
