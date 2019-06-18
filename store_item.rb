# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
candle1 = {
  scent: "birthday cake",
  price: 5,
  jar_shape: "round",
  color: "cream"
}
candle2 = {
  "scent" => "fresh laundry",
  "price" => 5,
  "jar_shape" => "round",
  "color" => "light blue"
}
candle3 = {
  scent: "spring bouquet",
  price: 6.5,
  jar_shape: "heart",
  color: "pink"
}

p candle1[:jar_shape]
p candle2["scent"]
p candle3[:color]
