module Student

  def dringk_water(weight)
    if weight > 10
      100
    elsif weight <= 9
      50
    end
  end
  extend self
  def hello; 'hello'; end
end
Student.autoload(:B, '../session1/student')
# Student::B.doit
# Student.autoload?(:B)
