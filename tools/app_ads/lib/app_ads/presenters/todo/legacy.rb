module AppAds
  module Todo
    class Legacy
      def lines(report)
        legacy = report.legacy.reject { |result| result.total.zero? }
        return [] if legacy.empty?

        ["## Legacy lines", ""] + legacy.map { |result| line(result) }
      end

      private

      def line(result)
        "- [ ] #{Markdown.code(result.source.file)}: #{result.orphans} of its #{result.total} entries are not provided by any other source. " \
          "Once every network list is pasted, those are probably stale: review them, then delete the file."
      end
    end
  end
end
