# stathat

Crystal StatHat library

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  stathat:
    github: russ/stathat
```

## Usage

```crystal
require "stathat"

StatHat::Client.configure do |settings|
  settings.key = "STATHATKEY"
end

StatHat::Client.post_value("yourstatname", 1)
StatHat::Client.post_count("yourstatname", 1)
```

## Contributing

1. Fork it ( https://github.com/russ/stathat/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [russ](https://github.com/russ) Russ Smith - creator, maintainer
