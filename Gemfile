# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'active_model_serializers', '~> 0.10.6'
gem 'devise', '~> 4.3'
gem 'devise_invitable', '~> 1.7', '>= 1.7.2'
gem 'doorkeeper', '~> 4.2', '>= 4.2.6'
gem 'listen', '>= 3.0.5', '< 3.2'
gem 'mailjet', '~> 1.5', '>= 1.5.4'
gem 'pg', '~> 0.21.0'
gem 'puma', '~> 3.7'
gem 'rack-cors', '~> 0.4.1'
gem 'rails', '~> 5.1.2'
gem 'rolify', '~> 5.1'
gem 'sidekiq', '~> 5.0', '>= 5.0.5'

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'faker', '~> 1.8', '>= 1.8.4'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
