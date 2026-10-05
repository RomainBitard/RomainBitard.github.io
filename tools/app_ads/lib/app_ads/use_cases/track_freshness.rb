module AppAds
  class TrackFreshness
    Status = Struct.new(:source, :state, :refreshed_on, :age_days, keyword_init: true) do
      def needs_action?
        state != :fresh
      end
    end

    def initialize(files:, state_store:, today:, parser: LineParser.new)
      @files = files
      @state_store = state_store
      @today = today
      @parser = parser
    end

    def call(sources)
      statuses = sources.select(&:tracks_refresh?).map { |source| status_for(source) }
      @state_store.save
      statuses
    end

    private

    def status_for(source)
      text = @files.read(source.file)
      return Status.new(source: source, state: :missing) if @parser.parse(text).records.empty?

      refreshed_on = @state_store.refreshed_on(source.id, text, @today)
      age_days = (@today - refreshed_on).to_i
      state = age_days > source.refresh_days ? :stale : :fresh
      Status.new(source: source, state: state, refreshed_on: refreshed_on, age_days: age_days)
    end
  end
end
