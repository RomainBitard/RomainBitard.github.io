module AppAds
  module Todo
    class InvalidLines
      def lines(report)
        items = report.build.source_reports.flat_map do |source_report|
          source_report.invalid.map { |line| "- [ ] #{Markdown.code(source_report.source.file)}: #{Markdown.code(line)}" }
        end
        return [] if items.empty?

        ["## Invalid lines (ignored)", ""] + items
      end
    end
  end
end
