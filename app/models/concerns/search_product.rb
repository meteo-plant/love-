module SearchProduct
  extend ActiveSupport::Concern
  
  included do
    scope :search_title, lambda { |keyword|
      table = Product.arel_table
      condition = table[:product_name].matches("%#{keyword}%")
      where(condition)
    }
    scope :search_artist, lambda { |artist_name|
      table = Product.arel_table
      condition = table[:airtist_name].matches("%#{artist_name}%")
      where(condition)
    }
    scope :search, lambda { |s|
      r = self
      r = r.search_title(s[:s_title]) if s[:s_title].present?
      r = r.search_artist(s[:s_artist]) if s[:s_artist].present?
      return r if r != self
      where({})
    }
  end
end




