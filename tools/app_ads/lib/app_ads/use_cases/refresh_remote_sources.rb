module AppAds
  class RefreshRemoteSources
    Result = Struct.new(:updated, :failed, keyword_init: true)
    MINIMUM_KEPT_RATIO = 0.5

    def initialize(http:, files:, parser: LineParser.new)
      @http = http
      @files = files
      @parser = parser
    end

    def call(sources)
      result = Result.new(updated: [], failed: [])
      sources.select(&:remote?).each { |source| refresh(source, result) }
      result
    end

    private

    def refresh(source, result)
      records = @parser.parse(@http.get(source.url).to_s).records
      return result.failed << source if suspiciously_short?(source, records)

      result.updated << source if @files.write(source.file, records.map { |record| "#{record}\n" }.join)
    end

    def suspiciously_short?(source, records)
      previous = @parser.parse(@files.read(source.file)).records.size
      records.empty? || records.size < previous * MINIMUM_KEPT_RATIO
    end
  end
end
