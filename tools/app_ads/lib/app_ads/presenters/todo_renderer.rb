module AppAds
  class TodoRenderer
    SECTIONS = [
      Todo::Header, Todo::Pages, Todo::RemoteFailures,
      Todo::Deploy, Todo::SdkAdapters, Todo::InvalidLines, Todo::ReviewDirect, Todo::Legacy, Todo::SellersAudit
    ].freeze

    def render(report)
      blocks = SECTIONS.map { |section| section.new.lines(report) }.reject(&:empty?)
      "#{blocks.map { |lines| lines.join("\n") }.join("\n\n")}\n"
    end
  end
end
