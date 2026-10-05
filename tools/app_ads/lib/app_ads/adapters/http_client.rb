require "net/http"

module AppAds
  class HttpClient
    MAX_REDIRECTS = 5
    USER_AGENT = "Mozilla/5.0 (app-ads.txt maintenance script)".freeze

    def get(url, redirects_left = MAX_REDIRECTS)
      response = request(URI(url))
      case response
      when Net::HTTPSuccess then utf8(response.body)
      when Net::HTTPRedirection then follow(url, response["location"], redirects_left)
      end
    rescue StandardError
      nil
    end

    private

    def request(uri)
      Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == "https", open_timeout: 15, read_timeout: 90) do |http|
        http.get(uri.request_uri, "User-Agent" => USER_AGENT)
      end
    end

    def follow(url, location, redirects_left)
      get(URI.join(url, location).to_s, redirects_left - 1) if location && redirects_left.positive?
    end

    def utf8(body)
      body.to_s.dup.force_encoding(Encoding::UTF_8).scrub
    end
  end
end
