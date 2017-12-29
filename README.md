# Press Start

A bare-bones Rails 5.1.4 boiler plate

![Press Start](https://i.imgur.com/enlGhOc.jpgo)

## Included Gems:
* [Rails](https://github.com/rails/rails) 5.1.4
* [Puma](https://github.com/puma/puma) for the server
* [Rename](https://github.com/morshedalam/rename) to rename your app
* [jQuery Rails](https://github.com/rails/jquery-rails) for the jQuery library
* [Postgres](https://github.com/ged/ruby-pg) for access to the Postgres database
* [Simple Form](https://github.com/plataformatec/simple_form) for simpler form syntax
* [Webpacker](https://github.com/rails/webpacker)
	* Babel configured with [Stage 3 Preset](https://babeljs.io/docs/plugins/preset-stage-3/) for modern JavaScript usage
* Full [RSpec](https://github.com/rspec/rspec) Testing Suite
	* [Capybara](https://github.com/teamcapybara/capybara)
	* [Factory Girl](https://github.com/thoughtbot/factory_girl)
	* [Database Cleaner](https://github.com/DatabaseCleaner/database_cleaner)
	* [Faker](https://github.com/stympy/faker)
	* [Poltergeist](https://github.com/teampoltergeist/poltergeist)
* [Rubocop](https://github.com/bbatsov/rubocop) Pre-configured with the [thoughtbot style guide](https://github.com/thoughtbot/guides/blob/master/style/ruby/.rubocop.yml)
* [Bootstrap 4](https://github.com/twbs/bootstrap-rubygem)
* [Better Errors](https://github.com/charliesome/better_errors) adds an inline repl to your error page, plus a cleaner error page!
* [Bullet](https://github.com/flyerhzm/bullet) for alerting you of N+1 queries in your code
* [Awesome Print](https://github.com/awesome-print/awesome_print) makes your console more awesome.
* See the full list in the [Gemfile](https://github.com/RailsGarden/Press-Start/blob/master/Gemfile)


## Getting Started
Clone the repo, cd in, and give it a name:

```
git clone https://github.com/railsgarden/press-start.git
cd press-start
rails g rename:into new_name
```

## Running Tests
We’re using [RSpec](https://github.com/rspec/rspec) for testing, so you can just run tests with `rspec`

## Contributing
Something I missed or a gem you think fits well here?

1. Fork it
2. Create your branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Added some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
