#create array
animals = %w(
  ant bird fish monkey
)
animals.each{|animal| puts animal}

def foo
  puts <<GROCERY_LIST
1. Salad mix.
2. Strawberries.*
def foo
    puts '这里是里面'
end
foo()
GROCERY_LIST
end
def foo2
  puts '这里是外面'
end
foo()
system('ls')

 puts 1 <=> 1
 puts 0 <=> 2
 puts __FILE__
puts $LAST_READ_LINE
puts __LINE__
Kernel.`'ls'
def greet()
  yield
  puts ("one")
  yield
end
animale = gets
greet {puts "hello world"}
printf("string: %s", animale)
print("string_value: ", animale)
ARGF.each{|line| print line if line =~ /Ruby/}
