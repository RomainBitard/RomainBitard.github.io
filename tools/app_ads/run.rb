require_relative "lib/app_ads"

exit AppAds::Cli.new(ARGV, root: File.expand_path("../..", __dir__)).run
