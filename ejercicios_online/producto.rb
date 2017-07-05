class Producto
  attr_reader :red, :name
  def initialize(name, blue, red, green)
    @name = name
    @blue = blue
    @red = red
    @green = green
  end
  def stock_product
    @blue + @red + @green
  end
end

products = []

file = File.open('productos.txt','r')
data = file.readlines
file.close

data.each do |line|
  name, blue, red, green = line.split(', ')
  products << Producto.new(name, blue.to_i, red.to_i, green.to_i)
end

products.each { |line| puts line.name, line.red }
puts products.inject(0) { |sum, i| sum + i.red }
products.each { |line| puts line.name, line.stock_product }
puts products.inject(0) { |sum, i| sum + i.stock_product }
