require "date"

module AppAds
  class Cli
    CONFIG_PATH = "app-ads/config.yml".freeze
    OFFLINE_FLAG = "--offline".freeze
    OPEN_FLAG = "--open".freeze

    def initialize(argv, root:, today: Date.today, out: $stdout, browser: Browser.new)
      @offline = argv.include?(OFFLINE_FLAG)
      @open = argv.include?(OPEN_FLAG)
      @today = today
      @out = out
      @browser = browser
      @files = FileStore.new(root)
      @http = HttpClient.new
    end

    def run
      config = ConfigLoader.new(@files).load(CONFIG_PATH)
      report = Pipeline.new(files: @files, http: @http, today: @today, offline: @offline).call(config)
      todo = TodoRenderer.new.render(report)
      @files.write(config.todo, todo)
      @out.puts(Summary.new.text(report, config, todo))
      open_due_pages(report.visits) if @open
      0
    end

    private

    def open_due_pages(visits)
      urls = visits.select(&:actionable?).map(&:url).uniq
      urls.each { |url| @browser.open(url) }
      @out.puts("Opened #{urls.size} pages in your browser")
    end
  end
end
