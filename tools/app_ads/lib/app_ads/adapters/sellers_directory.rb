require "json"
require "set"

module AppAds
  class SellersDirectory
    WORKERS = 8

    def initialize(http, url_overrides)
      @http = http
      @url_overrides = url_overrides
    end

    def seller_ids(domains)
      queue = Queue.new
      domains.each { |domain| queue << domain }
      results = {}
      mutex = Mutex.new
      Array.new(WORKERS) { Thread.new { drain(queue, results, mutex) } }.each(&:join)
      results
    end

    private

    def drain(queue, results, mutex)
      while (domain = next_domain(queue))
        ids = lookup(domain)
        mutex.synchronize { results[domain] = ids }
      end
    end

    def next_domain(queue)
      queue.pop(true)
    rescue ThreadError
      nil
    end

    def lookup(domain)
      candidate_urls(domain).each do |url|
        ids = parse(@http.get(url))
        return ids if ids
      end
      nil
    end

    def candidate_urls(domain)
      return [@url_overrides[domain]] if @url_overrides.key?(domain)

      ["https://#{domain}/sellers.json", "https://www.#{domain}/sellers.json"]
    end

    def parse(body)
      sellers = body && JSON.parse(body)["sellers"]
      sellers.map { |seller| seller["seller_id"].to_s.downcase }.to_set if sellers.is_a?(Array)
    rescue JSON::ParserError, TypeError, NoMethodError
      nil
    end
  end
end
