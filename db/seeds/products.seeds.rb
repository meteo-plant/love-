

file = Psych.load_file("db/seeds/products.yml")
file["products"].each do |params|
	Product.find_or_create_by(params)
end

file = Psych.load_file("db/seeds/genres.yml")
file["genres"].each do |params|
	Genre.find_or_create_by(params)
end