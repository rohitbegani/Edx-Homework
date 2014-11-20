class BookInStock
	attr_accessor :isbn, :price

	def initialize(i, p)
		if i == '' || p <= 0 then raise ArgumentError end

		@isbn = i
		@price = p
	end

	def price_as_string
		"$" + sprintf('%.2f', @price)
	end

end