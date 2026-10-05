module AppAds
  class AuditSellers
    Finding = Struct.new(:record, :source, keyword_init: true)
    Result = Struct.new(:missing, :unverifiable, :checked_domains, keyword_init: true)

    def initialize(directory:)
      @directory = directory
    end

    def call(sections)
      findings = third_party_findings(sections)
      ids_by_domain = @directory.seller_ids(findings.map { |finding| finding.record.domain }.uniq)
      Result.new(
        missing: findings.select { |finding| unknown_seller?(finding.record, ids_by_domain) },
        unverifiable: ids_by_domain.select { |_, ids| ids.nil? }.keys.sort,
        checked_domains: ids_by_domain.size
      )
    end

    private

    def third_party_findings(sections)
      sections.flat_map do |section|
        own_keys = section.source.own.map(&:key)
        section.entries.grep(Record).reject { |record| own_keys.include?(record.key) }
               .map { |record| Finding.new(record: record, source: section.source) }
      end
    end

    def unknown_seller?(record, ids_by_domain)
      ids = ids_by_domain[record.domain]
      ids && !ids.include?(record.account_id.downcase)
    end
  end
end
