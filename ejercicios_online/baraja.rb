class Carta
  attr_accessor :pinta, :num
  def initialize(num, pinta)
    @num = num
    @pinta = pinta
  end
  def to_s
    "#{@num}, #{@pinta}"
  end
end

mano = []
5.times { mano << Carta.new(rand(1..13), rand(1..4)) }
mano.each do |pinta|
  case pinta
    when '1'
      pinta = 'diamante'
    when '2'
      pinta = 'corazon'
    when '3'
      pinta = 'pica'
    when '4'
      pinta = 'trebol'
  end
end
puts mano
