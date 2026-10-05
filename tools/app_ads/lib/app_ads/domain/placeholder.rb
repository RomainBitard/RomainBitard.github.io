module AppAds
  module Placeholder
    PATTERN = /[<>\[\]{}\s]|x{4,}|your|publisher|account_?id|business_?id/i

    def self.match?(account_id)
      PATTERN.match?(account_id)
    end
  end
end
