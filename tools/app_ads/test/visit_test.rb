require_relative "test_helper"

module AppAds
  class VisitTest < Minitest::Test
    include TestFactories

    Status = Struct.new(:needs_action?)

    def test_prefers_direct_page_over_dashboard_home
      visit = Visit.new(source: source(page: "https://page", dashboard: "https://home"), status: nil, unresolved: [])

      assert_equal "https://page", visit.url
      assert visit.direct?
    end

    def test_actionable_when_list_is_due_or_own_id_missing
      configured = source(own: [record("vungle.com, MINE, DIRECT")])

      assert Visit.new(source: configured, status: Status.new(true), unresolved: []).actionable?
      refute Visit.new(source: configured, status: Status.new(false), unresolved: []).actionable?
      assert Visit.new(source: source, status: nil, unresolved: []).actionable?
    end
  end
end
