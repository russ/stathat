require "http/client"
require "http/params"

module StatHat
  API_URL = "https://api.stathat.com/ez"

  def self.post_value(stat_name, key, value, timestamp : Time = Time.now)
    send_to_stat_hat({
      "stat"  => stat_name.to_s,
      "key"   => key.to_s,
      "value" => value.to_s,
      "t"     => timestamp.to_s,
    })
  end

  def self.post_count(stat_name, key, count, timestamp = nil)
    send_to_stat_hat({
      "stat"  => stat_name.to_s,
      "key"   => key.to_s,
      "count" => count.to_s,
      "t"     => timestamp.to_s,
    })
  end

  private def self.send_to_stat_hat(args : Hash(String, String))
    channel = Channel(Nil).new

    spawn do
      uri = URI.parse(API_URL)
      uri.query = HTTP::Params.encode(args).to_s
      HTTP::Client.get(uri)
      channel.send(nil)
    end

    channel.receive
  end
end
