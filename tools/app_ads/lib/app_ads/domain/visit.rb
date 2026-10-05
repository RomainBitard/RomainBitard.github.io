module AppAds
  class Visit
    attr_reader :source, :status, :unresolved

    def initialize(source:, status:, unresolved:)
      @source = source
      @status = status
      @unresolved = unresolved
    end

    def url
      source.page || source.dashboard || source.docs
    end

    def direct?
      !source.page.nil?
    end

    def needs_paste?
      !!status&.needs_action?
    end

    def needs_own_id?
      source.network? && source.own.empty?
    end

    def actionable?
      needs_paste? || needs_own_id?
    end
  end
end
