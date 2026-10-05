module AppAds
  module Todo
    class Deploy
      def lines(report)
        live = report.live
        return [] if live.nil? || live.in_sync?
        return ["## Deploy", "", "- [ ] Could not download #{live.url}; check the site is up."] unless live.reachable

        ["## Deploy", "",
         "- [ ] The live file differs from `app-ads.txt` (#{live.missing_live} entries not live yet, " \
         "#{live.extra_live} live entries removed locally): commit and push."]
      end
    end
  end
end
