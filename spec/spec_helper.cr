require "spec"
require "../src/stat_hat"

StatHat::Client.configure do |settings|
  settings.key = "TESTKEY"
end

Habitat.raise_if_missing_settings!
