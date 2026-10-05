module AppAds
  class BuildAppAds
    SourceReport = Struct.new(:source, :invalid, :unresolved, :unconfirmed_direct, keyword_init: true)
    Result = Struct.new(:text, :merge, :source_reports, keyword_init: true)

    def initialize(files:, parser: LineParser.new, merger: Merger.new, renderer: AppAdsRenderer.new)
      @files = files
      @parser = parser
      @merger = merger
      @renderer = renderer
    end

    def call(config)
      contributions = config.sources.map { |source| contribution(source) }
      merge = @merger.merge(contributions.map { |source, entries, _| [source, entries] })
      Result.new(
        text: @renderer.render(config.preamble, merge.sections),
        merge: merge,
        source_reports: contributions.map(&:last)
      )
    end

    private

    def contribution(source)
      parsed = @parser.parse(@files.read(source.file))
      source.network? ? network_contribution(source, parsed) : verbatim_contribution(source, parsed)
    end

    def network_contribution(source, parsed)
      substitution = OwnLineSubstitution.new(source.own).apply(parsed.records)
      report = SourceReport.new(
        source: source,
        invalid: source.remote? ? [] : parsed.invalid,
        unresolved: substitution.unresolved,
        unconfirmed_direct: substitution.unconfirmed_direct
      )
      [source, substitution.records, report]
    end

    def verbatim_contribution(source, parsed)
      report = SourceReport.new(source: source, invalid: parsed.invalid, unresolved: [], unconfirmed_direct: [])
      [source, source.own + parsed.entries, report]
    end
  end
end
