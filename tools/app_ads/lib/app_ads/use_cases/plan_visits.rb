module AppAds
  class PlanVisits
    def call(sources, freshness, source_reports)
      sources.map do |source|
        Visit.new(
          source: source,
          status: freshness.find { |status| status.source.equal?(source) },
          unresolved: source_reports.find { |report| report.source.equal?(source) }.unresolved
        )
      end.select(&:url)
    end
  end
end
