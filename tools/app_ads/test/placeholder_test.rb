require_relative "test_helper"

module AppAds
  class PlaceholderTest < Minitest::Test
    def test_detects_typical_placeholders
      ["[yourironSourcePublisherAccountID]", "<YOUR_ID>", "{publisher id}", "pub-XXXXXXXXXXXXXXXX", "Business ID", "Publisher ID"].each do |id|
        assert Placeholder.match?(id), id
      end
    end

    def test_accepts_real_ids
      ["pub-8013417841559160", "355e3e572832d8f5a36bbf88bd2dbab2", "8CU12AQ1Y", "0010b00002MptSLAAZ", "657e5263bbdf4d5-OB"].each do |id|
        refute Placeholder.match?(id), id
      end
    end
  end
end
