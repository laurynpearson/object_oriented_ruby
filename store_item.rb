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
class Store
  def initialize(product_properties)
    @scent = product_properties[:scent]
    @price = product_properties[:price]
    @jar_shape = product_properties[:jar_shape]
    @color = product_properties[:color]
  end

  def print_info
    print_info = "The scent is #{@scent}, it costs $#{@price}, the jar shape is #{@jar_shape}, the color is #{@color}"
  end
end

class Candles < Store
  def texture
    return "silky"
  end
  def taste
    return "not edible"
  end
end
candle1 = Candles.new(scent: "vanilla", price: 2.5, jar_shape: "round", color: "green")
candle2 = Candles.new(scent: "Fresh Laundry", price: 5.75, jar_shape: "triangle", color:"purple")

class Food < Store
  def smell
    return "pew pew"
  end
  def shelf_life(number)
    return "#{number} months"
  end
end

food1 = Food.new(color: "green", scent: "sour", jar_shape: "cylinder")
p food1.smell
p candle1.taste
p food1.print_info
p food1.shelf_life(3)

