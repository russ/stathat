require "habitat"

module StatHat
  class Client
    Habitat.create do
      setting key : String
    end

    def self.post_value(stat_name, value, timestamp : Time = Time.now)
      StatHat.post_value(stat_name, settings.key, value, timestamp)
    end

    def self.post_count(stat_name, count, timestamp : Time = Time.now)
      StatHat.post_count(stat_name, settings.key, count, timestamp)
    end
  end
end
