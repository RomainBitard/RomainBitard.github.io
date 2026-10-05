module AppAds
  module Todo
    class Pages
      def lines(report)
        due, other = report.visits.partition(&:actionable?)
        ["## Pages to open", ""] + open_hint(due) + due_lines(due) + other_lines(other) +
          home_hint(report.visits) + docs(report)
      end

      private

      def open_hint(due)
        return ["Nothing to paste or configure."] if due.empty?

        ["_`ruby tools/app_ads/run.rb --open` opens these #{due.size} pages in your browser._", ""]
      end

      def due_lines(due)
        due.flat_map { |visit| PageItem.new(visit).lines }
      end

      def other_lines(other)
        other.empty? ? [] : ["", "Other pages:", ""] + other.flat_map { |visit| PageItem.new(visit).lines }
      end

      def home_hint(visits)
        return [] if visits.all?(&:direct?)

        ["", "_\"home →\" links open the dashboard home page. Open the right page once and copy its URL " \
             "into `page:` for that source in `app-ads/config.yml`: the link will then go straight to it._"]
      end

      def docs(report)
        sources = report.config.sources.select(&:docs)
        [""] + Markdown.details("Documentation", sources.map { |source| "- #{Markdown.link(source.name, source.docs)}" })
      end
    end
  end
end
