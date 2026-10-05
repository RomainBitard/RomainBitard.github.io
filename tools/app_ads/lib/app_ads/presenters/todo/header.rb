module AppAds
  module Todo
    class Header
      def lines(report)
        [
          "# app-ads.txt to-do",
          "",
          "Generated on #{report.today} by `ruby tools/app_ads/run.rb#{' --offline' if report.offline}`. " \
          "Edit `app-ads/config.yml` and `app-ads/sources/`, never `app-ads.txt` directly.",
          "",
          "#{report.build.merge.records.size} entries written, #{report.build.merge.duplicates} duplicates removed."
        ] + offline_note(report)
      end

      private

      def offline_note(report)
        report.offline ? ["", "_Offline run: downloads, sellers.json audit and live check were skipped._"] : []
      end
    end
  end
end
