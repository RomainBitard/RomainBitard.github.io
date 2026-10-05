require_relative "test_helper"

module AppAds
  class OwnLineSubstitutionTest < Minitest::Test
    include TestFactories

    def setup
      @own = record("vungle.com, MINE, DIRECT, c107d686becd2d77")
      @substitution = OwnLineSubstitution.new([@own])
    end

    def test_replaces_placeholder_and_foreign_direct_lines_of_own_domain
      result = @substitution.apply([
        record("vungle.com, <your id>, DIRECT"),
        record("vungle.com, 685179cb845d780011b17200, DIRECT, c107d686becd2d77")
      ])

      assert_equal [@own], result.records
      assert_empty result.unresolved
    end

    def test_keeps_reseller_lines_of_own_domain
      reseller = record("vungle.com, 123, RESELLER")

      assert_includes @substitution.apply([reseller]).records, reseller
    end

    def test_holds_back_placeholders_without_own_line
      placeholder = record("ironsrc.com, [yourironSourcePublisherAccountID], DIRECT")
      result = @substitution.apply([placeholder])

      refute_includes result.records, placeholder
      assert_equal [placeholder], result.unresolved
    end

    def test_flags_direct_lines_of_other_domains
      direct = record("mintegral.com, 42, DIRECT")
      result = @substitution.apply([direct])

      assert_includes result.records, direct
      assert_equal [direct], result.unconfirmed_direct
    end
  end
end
