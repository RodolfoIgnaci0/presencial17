class Perro
  attr_accessor :edad
  def initialize(nombre, edad)
    @nombre = nombre
    @edad = edad
  end
end

dalmata = Perro.new('terry', 22)
puts dalmata.edad

dalmata.edad = 50
puts dalmata.edad
