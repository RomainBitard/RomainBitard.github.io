require_relative "test_helper"

module AppAds
  class BuildAppAdsTest < Minitest::Test
    include TestFactories

    LEGACY_TEXT = "openx.com,1,RESELLER\nold.com,9,RESELLER\n".freeze

    def setup
      @network = source(id: "net", name: "Net", file: "net.txt", own: [record("vungle.com, MINE, DIRECT")])
      @legacy = source(id: "legacy", name: "Legacy", kind: "legacy", file: "legacy.txt")
      @config = Config.new(preamble: ["OWNERDOMAIN=example.com"], sources: [@network, @legacy])
      @files = MemoryFiles.new(
        "net.txt" => "vungle.com, <your id>, DIRECT\nopenx.com, 1, RESELLER\n",
        "legacy.txt" => LEGACY_TEXT.dup
      )
    end

    def test_renders_preamble_and_one_section_per_source
      text = BuildAppAds.new(files: @files).call(@config).text

      assert_equal "OWNERDOMAIN=example.com\n\n# Net\nvungle.com, MINE, DIRECT\nopenx.com, 1, RESELLER\n\n# Legacy\nold.com, 9, RESELLER\n", text
    end

    def test_measures_legacy_orphans_without_touching_the_file
      build = BuildAppAds.new(files: @files).call(@config)
      result = MeasureLegacy.new(files: @files).call(build.merge).first

      assert_equal [2, 1], [result.total, result.orphans]
      assert_equal LEGACY_TEXT, @files.read("legacy.txt")
    end
  end
end
