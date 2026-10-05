require_relative "test_helper"

module AppAds
  class LineParserTest < Minitest::Test
    def setup
      @parser = LineParser.new
    end

    def test_normalises_domain_and_relationship_but_keeps_id_case
      record = @parser.parse("  Media.NET ,8CU12AQ1Y, reseller\r\n").records.first

      assert_equal "media.net, 8CU12AQ1Y, RESELLER", record.to_s
    end

    def test_keeps_certification_authority
      assert_equal "f08c47fec0942fa0", @parser.parse("google.com, pub-1, DIRECT, f08c47fec0942fa0").records.first.cert_authority
    end

    def test_strips_comments_extensions_and_bom
      result = @parser.parse("﻿# header\nappnexus.com, 1, RESELLER # note\nopenx.com, 2, DIRECT; ext=1\n")

      assert_equal ["appnexus.com, 1, RESELLER", "openx.com, 2, DIRECT"], result.records.map(&:to_s)
    end

    def test_parses_variables
      variable = @parser.parse("managerdomain=semseoymas.com").entries.first

      assert_equal "MANAGERDOMAIN=semseoymas.com", variable.to_s
    end

    def test_reports_invalid_lines
      result = @parser.parse("singularads,548745,RESELLER\nfoo.com, 1, PARTNER\nRemember to replace the line")

      assert_empty result.entries
      assert_equal 3, result.invalid.size
    end
  end
end
