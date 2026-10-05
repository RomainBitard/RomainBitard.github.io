module AppAds
  module Todo
    class SdkAdapters
      def lines(report)
        sdk = report.sdk
        return [] unless sdk

        ["## SDK adapters in local Unity projects", ""] + unlisted(sdk) + unused(sdk) + usage(sdk)
      end

      private

      def unlisted(sdk)
        sdk.unlisted.map do |adapter|
          "- [ ] Adapter #{Markdown.code(adapter)} (#{sdk.usage[adapter].join(', ')}) has no source in `app-ads/config.yml`."
        end
      end

      def unused(sdk)
        sdk.unused.map do |source|
          "- [ ] **#{source.name}** is not used by any local project: delete its source if no published game uses it."
        end
      end

      def usage(sdk)
        rows = sdk.usage.sort.map { |adapter, projects| "| #{adapter} | #{projects.sort.join(', ')} |" }
        [""] + Markdown.details("Adapter usage", ["| Adapter | Projects |", "|---|---|"] + rows)
      end
    end
  end
end
