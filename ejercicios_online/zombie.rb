class Zombie
  attr_reader : years
  def food
    puts "braaaaaains !!"
  end
  def old
    years = 99
  end
end

tumama = Zombie.new
puts tumama.years
