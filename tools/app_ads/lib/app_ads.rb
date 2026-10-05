%w[
  domain/record domain/variable domain/line_parser domain/placeholder domain/own_line_substitution
  domain/merger domain/source domain/config domain/mixed_relationships domain/visit
  adapters/file_store adapters/http_client adapters/state_store adapters/sellers_directory
  adapters/unity_project_scanner adapters/config_loader adapters/browser
  use_cases/refresh_remote_sources use_cases/build_app_ads use_cases/measure_legacy use_cases/track_freshness
  use_cases/audit_sellers use_cases/compare_live use_cases/scan_sdk_adapters use_cases/plan_visits
  presenters/report presenters/markdown presenters/app_ads_renderer presenters/summary
  presenters/todo/header presenters/todo/page_item presenters/todo/pages presenters/todo/remote_failures
  presenters/todo/deploy presenters/todo/sdk_adapters presenters/todo/invalid_lines
  presenters/todo/review_direct presenters/todo/legacy presenters/todo/sellers_audit presenters/todo_renderer
  pipeline cli
].each { |path| require_relative "app_ads/#{path}" }
