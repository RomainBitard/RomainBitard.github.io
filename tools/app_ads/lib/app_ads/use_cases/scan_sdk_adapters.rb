module AppAds
  class ScanSdkAdapters
    Result = Struct.new(:usage, :unlisted, :unused, keyword_init: true)

    def initialize(scanner:)
      @scanner = scanner
    end

    def call(sources, ignored_adapters)
      usage = @scanner.adapters
      return nil unless usage

      listed = sources.map(&:adapter).compact
      Result.new(
        usage: usage,
        unlisted: (usage.keys - listed - ignored_adapters.keys).sort,
        unused: sources.select { |source| source.adapter && !usage.key?(source.adapter) }
      )
    end
  end
end
