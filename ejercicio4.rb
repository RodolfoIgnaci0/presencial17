class Dog
  attr_reader :nombre, :raza, :color
  def initialize(hash)
    @hash = hash
    @nombre = hash[:nombre]
    @raza = hash[:raza]
    @color = hash[:color]
  end
  def ladrar
    puts "#{@hash[:nombre]} esta ladrando"
  end
end

perro1 = Dog.new({nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'})

#print "#{perro2.nombre} #{perro2.raza} #{perro2.color}"
perro1.ladrar
