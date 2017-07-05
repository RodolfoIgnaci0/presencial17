class Persona
  attr_accessor :edad
  def initialize(nombre, *edad)
    @nombre = nombre
    @edad = edad
  end
  def saludar
    puts "Hola mi nombre es #{@nombre} y tengo #{@edad}"
  end
end

grupo = Persona.new('orlando', 33)
puts grupo.edad
