module AppAds
  module Todo
    class RemoteFailures
      def lines(report)
        failed = report.remote ? report.remote.failed : []
        return [] if failed.empty?

        ["## Automatic downloads that failed", "", "The previous copy was kept. Check the page still lists the lines:", ""] +
          failed.map { |source| "- [ ] **#{source.name}**: #{Markdown.link(source.url, source.url)}" }
      end
    end
  end
end
