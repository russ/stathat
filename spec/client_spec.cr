require "./spec_helper"

module StatHat
  describe Client do
    it "posts data to stathat.com" do
      StatHat::Client.post_value("teststat", 1)
    end
  end
end
