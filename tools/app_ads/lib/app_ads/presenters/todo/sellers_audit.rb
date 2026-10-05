module AppAds
  module Todo
    class SellersAudit
      def lines(report)
        sellers = report.sellers
        return [] unless sellers

        ["## sellers.json audit", "",
         "#{sellers.checked_domains} ad systems checked. Report only: a missing ID is often stale, " \
         "but some ad systems publish incomplete sellers.json files."] +
          missing(sellers) + unverifiable(sellers)
      end

      private

      def missing(sellers)
        return ["", "All seller IDs were found."] if sellers.missing.empty?

        groups = sellers.missing.group_by { |finding| finding.record.domain }.sort
        [""] + Markdown.details(
          "#{sellers.missing.size} entries whose seller ID is not in the ad system's sellers.json",
          groups.flat_map { |domain, findings| group_lines(domain, findings) }
        )
      end

      def group_lines(domain, findings)
        ["**#{domain}** (#{findings.size})", ""] +
          findings.map { |finding| "- #{Markdown.code(finding.record)} from #{finding.source.name}" } + [""]
      end

      def unverifiable(sellers)
        return [] if sellers.unverifiable.empty?

        [""] + Markdown.details(
          "#{sellers.unverifiable.size} ad systems without a readable sellers.json",
          [sellers.unverifiable.join(", ")]
        )
      end
    end
  end
end
