
require_relative('student')
require 'test/unit'
class Song
  module People
    def say_lrc(word)
      if word.to_s
          puts "TEST"+ word.to_s
      elsif
        puts 'test'
      end
    end
  end
  def initialize(name, duration, lrc)
    @name = name
    @duration = duration
    @lrc = lrc
  end
  def to_s
    "Song: #@name--#@lrc(#@duration)"
  end
  def say(word)
    People.say_lrc(word)
  end
  include Student
  include People
end

song = Song.new("稻香","20", "daohuaxiang")

new_method = song.dringk_water(29)
song.say_lrc(1)
print song.hello
# puts File.constants
puts song.to_s
puts(song.inspect)
class Song1 < Song
    attr_writer(:name)
    attr_writer(:duration)
    attr_writer(:lrc)
    attr_reader(:voice)
  def initialize(voice)
    super(name = '听爸爸的话',duration='30',lrc='千里之外')
    @duration = duration
    @voice = voice
  end
  def get_current_path(fileName)
     file = File.new('../session1/'+fileName,'w')
     file.write("test")
     file.puts ""
    File.open(fileName).each {|f|
      print f
    message = f小时
    puts message
      if (f = ~/session1/)
         file.print message
         file.print '销售人员:'\
      else
        file.puts message
        file.write("testsss")
      end
      }
  end
end
s1 = Song1.new('v')


