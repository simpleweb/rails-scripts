run 'rm README.rdoc'
run 'rm public/index.html'
run 'rm -rf test'

gem 'bugsnag'
gem 'capistrano'
gem 'rack-git_sha'
gem 'lograge'
gem 'draper'

gem_group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

gem_group :development, :test do
  gem 'rspec-rails'
end

gem_group :test do
  gem 'shoulda-matchers'
end

run "bundle install --quiet"

generate('rspec:install')

environment 'config.lograge.enabled = true', env: :production

application do
  <<-GENERATORS
config.app_generators do |g|
      g.test_framework :rspec, views: false, view_specs: false, helpers: false, helper_specs: false, routing_specs: false
      g.stylesheets false
      g.helper false
      g.javascripts false
    end
  GENERATORS
end

route "mount Rack::GitSha => '/sha'"

git :init
git add: '.'
