module AppAds
  class Merger
    Section = Struct.new(:source, :entries, keyword_init: true)
    Result = Struct.new(:sections, :duplicates, keyword_init: true) do
      def records
        sections.flat_map(&:entries).grep(Record)
      end
    end

    def merge(contributions)
      @seen = {}
      @duplicates = 0
      sections = contributions.map do |source, entries|
        Section.new(source: source, entries: entries.select { |entry| first_occurrence?(entry) })
      end
      Result.new(sections: sections, duplicates: @duplicates)
    end

    private

    def first_occurrence?(entry)
      existing = @seen[entry.key]
      unless existing
        @seen[entry.key] = entry
        return true
      end

      donate_certificate(existing, entry)
      @duplicates += 1
      false
    end

    def donate_certificate(existing, duplicate)
      existing.cert_authority ||= duplicate.cert_authority if existing.is_a?(Record)
    end
  end
end
