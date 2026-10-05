require_relative "test_helper"

module AppAds
  class MergerTest < Minitest::Test
    include TestFactories

    def test_first_source_wins_and_duplicates_are_counted
      first = source(id: "first")
      second = source(id: "second")
      result = Merger.new.merge([
        [first, [record("pubmatic.com, 1, RESELLER")]],
        [second, [record("PubMatic.com, 1, reseller"), record("pubmatic.com, 2, RESELLER")]]
      ])

      assert_equal 1, result.sections[0].entries.size
      assert_equal ["pubmatic.com, 2, RESELLER"], result.sections[1].entries.map(&:to_s)
      assert_equal 1, result.duplicates
    end

    def test_ids_differing_only_by_case_are_kept
      result = Merger.new.merge([[source, [record("33across.com, 001pg00001dtxmwian, RESELLER"), record("33across.com, 001Pg00001DTxmwIAN, RESELLER")]]])

      assert_equal 2, result.records.size
    end

    def test_duplicate_donates_missing_certification_authority
      legacy = source(id: "legacy", kind: "legacy")
      donor = record("pubmatic.com, 1, RESELLER, 5d62403b186f2ace")
      result = Merger.new.merge([[source, [record("pubmatic.com, 1, RESELLER")]], [legacy, [donor]]])

      assert_equal ["pubmatic.com, 1, RESELLER, 5d62403b186f2ace"], result.records.map(&:to_s)
    end
  end
end
