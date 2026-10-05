require "set"

module AppAds
  class CompareLive
    Result = Struct.new(:url, :reachable, :missing_live, :extra_live, keyword_init: true) do
      def in_sync?
        reachable && missing_live.zero? && extra_live.zero?
      end
    end

    def initialize(http:, parser: LineParser.new)
      @http = http
      @parser = parser
    end

    def call(url, local_text)
      live_text = @http.get(url)
      return Result.new(url: url, reachable: false, missing_live: 0, extra_live: 0) unless live_text

      local = keys(local_text)
      live = keys(live_text)
      Result.new(url: url, reachable: true, missing_live: (local - live).size, extra_live: (live - local).size)
    end

    private

    def keys(text)
      @parser.parse(text).entries.map(&:key).to_set
    end
  end
end
