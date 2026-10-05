module AppAds
  Source = Struct.new(
    :id, :name, :kind, :file, :url, :own, :adapter, :refresh_days, :page, :dashboard, :where, :docs,
    keyword_init: true
  ) do
    def network?
      kind == "network"
    end

    def legacy?
      kind == "legacy"
    end

    def remote?
      !url.nil?
    end

    def tracks_refresh?
      !refresh_days.nil? && !remote?
    end
  end
end
