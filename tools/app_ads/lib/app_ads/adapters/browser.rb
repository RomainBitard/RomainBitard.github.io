require "rbconfig"

module AppAds
  class Browser
    def open(url)
      system(*command(url))
    end

    private

    def command(url)
      case RbConfig::CONFIG["host_os"]
      when /mswin|mingw|cygwin/ then ["rundll32", "url.dll,FileProtocolHandler", url]
      when /darwin/ then ["open", url]
      else ["xdg-open", url]
      end
    end
  end
end
