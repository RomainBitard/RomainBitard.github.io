module AppAds
  Report = Struct.new(
    :today, :config, :build, :remote, :legacy, :freshness, :visits, :sellers, :live, :sdk, :offline,
    keyword_init: true
  )
end
