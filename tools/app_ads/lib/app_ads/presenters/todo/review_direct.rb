module AppAds
  module Todo
    class ReviewDirect
      def lines(report)
        items = [unconfirmed(report), mixed(report)].reject(&:empty?)
        return [] if items.empty?

        ["## To review", ""] + items.inject { |first, second| first + [""] + second }
      end

      private

      def unconfirmed(report)
        report.build.source_reports.flat_map do |source_report|
          source_report.unconfirmed_direct.map do |record|
            "- [ ] **#{source_report.source.name}** list has a DIRECT line that is not one of your own: " \
              "#{Markdown.code(record)}. If it is your account, add it to `own:`."
          end
        end
      end

      def mixed(report)
        pairs = MixedRelationships.in(report.build.merge.records)
        return [] if pairs.empty?

        Markdown.details(
          "#{pairs.size} seller IDs are declared both DIRECT and RESELLER (usually fine)",
          pairs.map { |domain, account_id| "- #{Markdown.code("#{domain}, #{account_id}")}" }
        )
      end
    end
  end
end
