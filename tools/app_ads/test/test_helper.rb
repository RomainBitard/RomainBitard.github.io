require "minitest/autorun"
require_relative "../lib/app_ads"

module AppAds
  module TestFactories
    def record(line)
      LineParser.new.parse(line).records.first
    end

    def source(**attributes)
      Source.new(id: "test", name: "Test", kind: "network", own: [], **attributes)
    end
  end

  class MemoryFiles
    def initialize(contents = {})
      @contents = contents
    end

    def read(path)
      @contents.fetch(path, "")
    end

    def write(path, text)
      changed = @contents[path] != text
      @contents[path] = text
      changed
    end
  end
end
