# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
# candle1 = {
#   scent: "birthday cake",
#   price: 5,
#   jar_shape: "round",
#   color: "cream"
# }
# candle2 = {
#   "scent" => "fresh laundry",
#   "price" => 5,
#   "jar_shape" => "round",
#   "color" => "light blue"
# }
# candle3 = {
#   scent: "spring bouquet",
#   price: 6.5,
#   jar_shape: "heart",
#   color: "pink"
# }

# p candle1[:jar_shape]
# p candle2["scent"]
# p candle3[:color]

# Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.
class Candles
  attr_writer :scent
  attr_reader :scent
  # attr_writer :price
  attr_reader :price
  attr_reader :jar_shape
  attr_reader :color
  def initialize(scent, price, jar_shape, color)
    @scent = scent
    @price = price
    @jar_shape = jar_shape
    @color = color
  end

  # def scent
  # @scent
  # end

  # def scent=(smell)
  # @scent = scent
  # end

# reader/getter
  # def price
  # @price
  # end
# writer/setter
  def price=(number)
    @price = price * 3.25
  end

  # def jar_shape
  # @jar_shape
  # end

  # def color
  #   @color
  # end
  def print_info
    print_info = "The scent is #{@scent}, it costs $#{@price}, the jar shape is #{@jar_shape}, the color is #{@color}"
  end
end
candle1 = Candles.new("vanilla", 2.5, "round", "green")
# p candle1.print_info
# p candle1.price
candle2 = Candles.new("Fresh Laundry", 5.75, "triangle", "purple")
p candle2.print_info
# p candle1.scent
# p candle1.scent
# candle1.scent = "Peach"
# p candle1.scent

p candle2.price
candle2.price = 2
p candle2.price