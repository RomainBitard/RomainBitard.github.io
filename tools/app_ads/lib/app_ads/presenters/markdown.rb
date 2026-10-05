module AppAds
  module Markdown
    module_function

    def link(label, url)
      url ? "[#{label}](#{url})" : ""
    end

    def code(text)
      "`#{text}`"
    end

    def details(summary, lines)
      ["<details><summary>#{summary}</summary>", ""] + lines + ["", "</details>"]
    end
  end
end
