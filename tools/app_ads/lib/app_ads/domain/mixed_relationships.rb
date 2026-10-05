module AppAds
  module MixedRelationships
    def self.in(records)
      records
        .group_by { |record| [record.domain, record.account_id] }
        .select { |_, group| group.map(&:relationship).uniq.size > 1 }
        .keys
    end
  end
end
