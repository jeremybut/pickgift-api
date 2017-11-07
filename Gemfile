# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'active_model_serializers', '~> 0.10.6'
gem 'devise', '~> 4.3'
gem 'doorkeeper', '~> 4.2', '>= 4.2.6'
gem 'pg', '~> 0.21.0'
gem 'puma', '~> 3.7'
gem 'rack-cors', '~> 0.4.1'
gem 'rails', '~> 5.1.2'
gem 'rolify', '~> 5.1'

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
