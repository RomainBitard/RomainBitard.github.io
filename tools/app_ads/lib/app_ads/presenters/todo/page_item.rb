module AppAds
  module Todo
    class PageItem
      CONFIG_FILE = "app-ads/config.yml".freeze

      def initialize(visit)
        @visit = visit
        @source = visit.source
      end

      def lines
        checkbox = @visit.actionable? ? "[ ] " : ""
        ["- #{checkbox}**#{Markdown.link(@source.name, @visit.url)}**#{location}#{actions}#{age}"] + placeholder_lines
      end

      private

      def location
        return "" unless @source.where

        @visit.direct? ? " · #{@source.where}" : " · home → #{@source.where}"
      end

      def actions
        steps = []
        steps << "paste the whole list into #{Markdown.code(@source.file)}" if @visit.needs_paste?
        steps << "add your line under `own:` in #{Markdown.code(CONFIG_FILE)}" if @visit.needs_own_id?
        steps.empty? ? "" : " → #{steps.join(' and ')}"
      end

      def age
        status = @visit.status
        return " · downloaded automatically" if @source.remote?
        return "" unless status
        return " · never pasted" if status.state == :missing

        " · pasted #{status.refreshed_on} (#{status.age_days} days ago)"
      end

      def placeholder_lines
        @visit.unresolved.map { |record| "  - placeholder left out: #{Markdown.code(record)}" }
      end
    end
  end
end
