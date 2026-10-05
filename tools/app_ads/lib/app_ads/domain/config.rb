module AppAds
  Config = Struct.new(
    :output, :todo, :state, :live_url, :unity_projects, :preamble,
    :sellers_json_urls, :ignored_adapters, :sources,
    keyword_init: true
  )
end
