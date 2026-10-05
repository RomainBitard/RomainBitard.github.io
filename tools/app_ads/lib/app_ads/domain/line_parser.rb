module AppAds
  class LineParser
    Result = Struct.new(:entries, :invalid, keyword_init: true) do
      def records
        entries.grep(Record)
      end
    end

    RELATIONSHIPS = %w[DIRECT RESELLER].freeze
    DOMAIN = /\A[a-z0-9-]+(\.[a-z0-9-]+)+\z/
    VARIABLE = /\A([A-Za-z]+)\s*=\s*(\S.*)\z/

    def parse(text)
      result = Result.new(entries: [], invalid: [])
      text.each_line { |raw| parse_line(raw, result) }
      result
    end

    private

    def parse_line(raw, result)
      line = strip_noise(raw)
      return if line.empty?

      entry = parse_variable(line) || parse_record(line)
      entry ? result.entries << entry : result.invalid << line
    end

    def strip_noise(raw)
      raw.delete("﻿").sub(/#.*/, "").sub(/;.*/, "").strip
    end

    def parse_variable(line)
      match = VARIABLE.match(line)
      Variable.new(name: match[1].upcase, value: match[2].strip) if match
    end

    def parse_record(line)
      fields = line.split(",").map(&:strip)
      return unless valid_record_fields?(fields)

      Record.new(
        domain: fields[0].downcase,
        account_id: fields[1],
        relationship: fields[2].upcase,
        cert_authority: fields[3].to_s.empty? ? nil : fields[3]
      )
    end

    def valid_record_fields?(fields)
      fields.size.between?(3, 4) &&
        DOMAIN.match?(fields[0].downcase) &&
        !fields[1].empty? &&
        RELATIONSHIPS.include?(fields[2].upcase)
    end
  end
end
