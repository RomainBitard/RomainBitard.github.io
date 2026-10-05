module AppAds
  Record = Struct.new(:domain, :account_id, :relationship, :cert_authority, keyword_init: true) do
    def key
      [:record, domain, account_id, relationship]
    end

    def direct?
      relationship == "DIRECT"
    end

    def to_s
      [domain, account_id, relationship, cert_authority].compact.join(", ")
    end
  end
end
