require_relative "test_helper"

module AppAds
  class RefreshRemoteSourcesTest < Minitest::Test
    include TestFactories

    FakeHttp = Struct.new(:body) do
      def get(_url)
        body
      end
    end

    def setup
      @source = source(file: "remote.txt", url: "https://example.com/list.md")
      @files = MemoryFiles.new("remote.txt" => "a.com, 1, RESELLER\nb.com, 2, RESELLER\nc.com, 3, RESELLER\n")
    end

    def test_writes_only_parsed_records
      result = refresh("Intro text\n```\na.com, 1, RESELLER\nb.com, 2, reseller\n```\n")

      assert_equal [@source], result.updated
      assert_equal "a.com, 1, RESELLER\nb.com, 2, RESELLER\n", @files.read("remote.txt")
    end

    def test_keeps_previous_copy_when_the_page_shrinks_too_much
      result = refresh("a.com, 1, RESELLER\n")

      assert_equal [@source], result.failed
      assert_equal 3, LineParser.new.parse(@files.read("remote.txt")).records.size
    end

    private

    def refresh(body)
      RefreshRemoteSources.new(http: FakeHttp.new(body), files: @files).call([@source])
    end
  end
end
