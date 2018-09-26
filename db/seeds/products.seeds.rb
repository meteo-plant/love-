

file = Psych.load_file("db/seeds/products.yml")
file["products"].each do |params|
	Product.find_or_create_by(params)
end