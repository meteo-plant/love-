module SearchProduct
  extend ActiveSupport::Concern
  

  included do
    scope :search_title, lambda { |keyword|

      where("(products.product_name LIKE :keyword) OR (products.airtist_name LIKE :keyword) OR (products.id LIKE :keyword)", keyword: "%#{sanitize_sql_like(keyword)}%") if keyword.present?

    }
    scope :search, lambda { |s|
      r = self
      r = r.search_title(s[:s_title]) if s[:s_title].present?
      return r if r != self
      where({})
    }
  end
end

