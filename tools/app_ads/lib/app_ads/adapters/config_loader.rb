require "yaml"

module AppAds
  class ConfigLoader
    def initialize(files, parser = LineParser.new)
      @files = files
      @parser = parser
    end

    def load(path)
      data = YAML.safe_load(@files.read(path))
      Config.new(
        output: data.fetch("output"),
        todo: data.fetch("todo"),
        state: data.fetch("state"),
        live_url: data["live_url"],
        unity_projects: data["unity_projects"] && @files.absolute(data["unity_projects"]),
        preamble: data.fetch("preamble", []),
        sellers_json_urls: data.fetch("sellers_json_urls", {}),
        ignored_adapters: data.fetch("ignored_adapters", {}),
        sources: data.fetch("sources").map { |source| build_source(source) }
      )
    end

    private

    def build_source(data)
      Source.new(
        id: data.fetch("id"),
        name: data.fetch("name"),
        kind: data.fetch("kind"),
        file: data["file"],
        url: data["url"],
        own: own_records(data),
        adapter: data["adapter"],
        refresh_days: data["refresh_days"],
        page: data["page"],
        dashboard: data["dashboard"],
        where: data["where"],
        docs: data["docs"]
      )
    end

    def own_records(data)
      parsed = @parser.parse(Array(data["own"]).join("\n"))
      raise ArgumentError, "Invalid own line in #{data['id']}: #{parsed.invalid.first}" if parsed.invalid.any?

      parsed.records
    end
  end
end
