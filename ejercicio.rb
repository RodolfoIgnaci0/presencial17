class Product
  attr_reader :name, :large, :medium, :small
  def initialize(name, large, medium, small)
    @name = name
    @large = large
    @medium = medium
    @small = small
  end

  def actualizacion_catalogo(catalogo_antiguo)
    file = File.open('nuevo_catalogo.txt','w')
    catalogo_antiguo.each { |product| file.puts product }
    file.close
  end
end

products_list = []
data = []
 File.open('catalogo.txt', 'r') { |file| data = file.readlines}
 data.each do |prod|
   ls = prod.split(', ')
   ls.delete_at(4)
   products_list << Product.new(*ls)
 end
