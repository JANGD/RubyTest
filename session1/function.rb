$Persion = "hello"  #全局变量 $
@name = "崽种"      #实例变量 @
puts "#$Persion,#@name" #输出

def say_goodnight(name)
  result = "Good night, " + "#{name.capitalize} + #$Persion" #字符串修饰符 #{}
  return result
end
puts say_goodnight("linlin")
puts say_goodnight("#{$Persion} #{@name}")






def input_count(count)
  if count < 3
    puts('您输入的字数' + "#{count}" + '不符合要求')
  elsif count > 10
    puts('您输入了正确的数字')
  else
    puts('您输入的数字介于正确错误之间')
  end
end

input_count(2)
input_count(4)
input_count(11)
num_count = 2
puts "#{num_count = num_count * num_count}" while num_count < 100

def replace_string(line)
  if line =~ /P(yel|ython)/
    puts "#{line}"
  end
end
replace_string("Python")
puts replace_string("Python")
