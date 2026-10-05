module AppAds
  class AppAdsRenderer
    def render(preamble, sections)
      blocks = [preamble] + sections.reject { |section| section.entries.empty? }.map { |section| section_lines(section) }
      "#{blocks.reject(&:empty?).map { |lines| lines.join("\n") }.join("\n\n")}\n"
    end

    private

    def section_lines(section)
      ["# #{section.source.name}"] + section.entries.map(&:to_s)
    end
  end
end
