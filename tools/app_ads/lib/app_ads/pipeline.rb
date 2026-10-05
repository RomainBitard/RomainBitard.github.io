module AppAds
  class Pipeline
    def initialize(files:, http:, today:, offline:)
      @files = files
      @http = http
      @today = today
      @offline = offline
    end

    def call(config)
      remote = refresh_remote(config)
      build = BuildAppAds.new(files: @files).call(config)
      @files.write(config.output, build.text)
      freshness = track_freshness(config)
      Report.new(
        today: @today, config: config, build: build, remote: remote, offline: @offline,
        legacy: MeasureLegacy.new(files: @files).call(build.merge),
        freshness: freshness,
        visits: PlanVisits.new.call(config.sources, freshness, build.source_reports),
        sellers: audit_sellers(config, build),
        live: compare_live(config, build),
        sdk: scan_sdk(config)
      )
    end

    private

    def refresh_remote(config)
      RefreshRemoteSources.new(http: @http, files: @files).call(config.sources) unless @offline
    end

    def track_freshness(config)
      state_store = StateStore.new(@files, config.state)
      TrackFreshness.new(files: @files, state_store: state_store, today: @today).call(config.sources)
    end

    def audit_sellers(config, build)
      return if @offline

      directory = SellersDirectory.new(@http, config.sellers_json_urls)
      AuditSellers.new(directory: directory).call(build.merge.sections)
    end

    def compare_live(config, build)
      CompareLive.new(http: @http).call(config.live_url, build.text) unless @offline || config.live_url.nil?
    end

    def scan_sdk(config)
      return unless config.unity_projects

      ScanSdkAdapters.new(scanner: UnityProjectScanner.new(config.unity_projects)).call(config.sources, config.ignored_adapters)
    end
  end
end
