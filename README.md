# Rails Scripts

A collection of scripts that we use at Simpleweb for bootstrapping new
applications.

## Rails Application Template

To start a new rails application using the Simpleweb Rails Template

    $ rails new app_name --template https://github.com/simpleweb/rails-scripts/raw/master/template.rb

This will generate a new Rails application configured with the preferred
Simpleweb defaults for projects, this includes, but is not limited to
the following.

* RSpec for tests
* Airbrake for exceptions
* Better errors in development
* Better logs in production
* Git SHA of the app available at `/sha`
