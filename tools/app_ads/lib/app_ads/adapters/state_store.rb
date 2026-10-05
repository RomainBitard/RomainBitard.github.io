require "date"
require "digest"
require "yaml"

module AppAds
  class StateStore
    def initialize(files, path)
      @files = files
      @path = path
      @data = YAML.safe_load(files.read(path)) || {}
    end

    def refreshed_on(source_id, text, today)
      digest = Digest::SHA256.hexdigest(text)
      entry = @data[source_id]
      return Date.parse(entry["refreshed_on"]) if entry && entry["digest"] == digest

      @data[source_id] = { "digest" => digest, "refreshed_on" => today.iso8601 }
      today
    end

    def save
      @files.write(@path, YAML.dump(@data.sort.to_h))
    end
  end
end
