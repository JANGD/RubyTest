class Person
  private_class_method :new
  @@shareInstance = nil
  def Person.shareInstance
    @@shareInstance = new unless @@shareInstance
    @@shareInstance
  end
  def initialize(gender, height, weight)
      @gender = gender
      @height = height
      @weight = weight
  end
end
class Teacher
  private_class_method :new
  @@shareInstance = nil
  def Teacher.shareInstance
    @@shareInstance = new unless @@shareInstance
    @@shareInstance
  end

  def send_value(name, age)
    puts name + age
  end
end

Teacher.shareInstance.send_value(1,2)


# class Student < Person
#   def initialize(gender, height, weight, name, scores)
#     super(gender, height, weight)
#   end
#   attr_reader :gender, :height, :weight
#   attr_writer :name
#   def scores(new_score)
#     @count = (new_score / 10)
#     if @count < 7
#       @count = 'C'
#     elsif @count >= 7 && @count < 9
#       @count = 'B'
#     else
#       @count = 'A'
#     end
#     @scores=@count
#   end
#   public
#   def Student.getName(scors)
#     return scors/10
#   end
# end




