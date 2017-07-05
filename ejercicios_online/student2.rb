class Student
  attr_reader :name
  def initialize(name, grade1, grade2, grade3)
    @name = name
    @grade1 = grade1
    @grade2 = grade2
    @grade3 = grade3
  end

  def to_s
    "#{@name}, #{@grade1}, #{@grade2}, #{@grade3}"
  end

  def average
    (@grade1 + @grade2 + @grade3) / 3.0
  end
end

file = File.open('student2.txt','r')
data = file.readlines
file.close

students = []

data.each do |student|
  name, grade1, grade2, grade3 = student.split(', ')
  students << Student.new(name, grade1.to_i, grade2.to_i, grade3.to_i)
end

total_average = students.inject(0) do |sum, student|
  sum + student.average
end
print total_average / 3
