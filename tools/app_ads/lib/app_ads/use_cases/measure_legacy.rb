module AppAds
  class MeasureLegacy
    Result = Struct.new(:source, :total, :orphans, keyword_init: true)

    def initialize(files:, parser: LineParser.new)
      @files = files
      @parser = parser
    end

    def call(merge)
      merge.sections.select { |section| section.source.legacy? }.map do |section|
        total = @parser.parse(@files.read(section.source.file)).entries.size
        Result.new(source: section.source, total: total, orphans: section.entries.size)
      end
    end
  end
end
