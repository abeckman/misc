class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
#     unless price.is_a?(Float)
#       raise ArgumentError.new("Only floating point numbers are allowed")
#    end
    unless price > 0.0
      raise ArgumentError.new("Price must be greater than $0.0")
    end
    unless !isbn.empty?
      raise ArgumentError.new("A book name is required")
    end
  end

  def isbn
    @isbn
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    return "$" + "%.2f" % @price
  end

end

# my_book = BookInStock.new("", 44.50)
# my_book1 = BookInStock.new("book", 2)
# my_book2 = BookInStock.new("book", "string")
