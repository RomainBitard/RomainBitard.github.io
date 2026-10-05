module AppAds
  class OwnLineSubstitution
    Result = Struct.new(:records, :unresolved, :unconfirmed_direct, keyword_init: true)

    def initialize(own_records)
      @own_records = own_records
      @own_domains = own_records.map(&:domain).uniq
    end

    def apply(records)
      result = Result.new(records: @own_records.dup, unresolved: [], unconfirmed_direct: [])
      records.each { |record| route(record, result) }
      result
    end

    private

    def route(record, result)
      return if replaced_by_own?(record)
      return result.unresolved << record if Placeholder.match?(record.account_id)

      result.unconfirmed_direct << record if record.direct?
      result.records << record
    end

    def replaced_by_own?(record)
      @own_domains.include?(record.domain) && (record.direct? || Placeholder.match?(record.account_id))
    end
  end
end
