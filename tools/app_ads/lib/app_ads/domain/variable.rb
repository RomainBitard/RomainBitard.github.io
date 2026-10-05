module AppAds
  Variable = Struct.new(:name, :value, keyword_init: true) do
    def key
      [:variable, name, value.downcase]
    end

    def to_s
      "#{name}=#{value}"
    end
  end
end
