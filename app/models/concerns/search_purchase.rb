module SearchPurchase
  extend ActiveSupport::Concern
  

  included do
    scope :search_name, lambda { |keyword|
      where(" (purchases.id LIKE :keyword)", keyword: "%#{sanitize_sql_like(keyword)}%") if keyword.present?
    }
    scope :search, lambda { |s|
      r = self
      r = r.search_name(s[:s_name]) if s[:s_name].present?
      return r if r != self
      where({})
    }
  end
end