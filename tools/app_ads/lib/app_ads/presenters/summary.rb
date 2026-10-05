module AppAds
  class Summary
    def text(report, config, todo)
      open_items = todo.scan(/^- \[ \]/).size
      [
        "#{config.output}: #{report.build.merge.records.size} entries (#{report.build.merge.duplicates} duplicates removed)",
        remote_line(report),
        "#{config.todo}: #{open_items.zero? ? 'nothing to do' : "#{open_items} open items"}"
      ].compact.join("\n")
    end

    private

    def remote_line(report)
      return unless report.remote

      updated = report.remote.updated.map(&:name)
      failed = report.remote.failed.map(&:name)
      status = updated.empty? ? "unchanged" : "updated #{updated.join(', ')}"
      status += ", failed #{failed.join(', ')}" unless failed.empty?
      "Downloaded lists: #{status}"
    end
  end
end
