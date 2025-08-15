# TrashpandaRubyStyle

Ruby styles for TrashPanda, Grant's Styles/Design System

Initially adapted from the [Percy Blog post on sharing RuboCop Rules](https://medium.com/perceptual-percy/share-rubocop-rules-across-all-of-your-repos-f3281fbd71f8).

## Installation

Add this line to you application's Gemfile:

```
group :test, :development do
  gem "trashpanda_ruby_style",
      github: 'storey/trashpanda_ruby_style',
      ref: '...',
      require: false
end
```

## Usage

In your `.rubocop.yml`, start with the following

```
inherit_gem:
  trashpanda_ruby_style:
    - default.yml
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console`
for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version,
update the version number in `version.rb`, and then (TODO TODO)

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/storey/trashpanda_ruby_style, though I don't expect to be monitoring much.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## TODO
1. Get version tagging working, update .pre-commit-config.yaml to use a specific version.
2. Get prettier set up to run on the repo
