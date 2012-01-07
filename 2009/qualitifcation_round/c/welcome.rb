require 'rubygems'
require 'pp'
require 'ruby-debug'

class NilClass
  def +(val)
    val
  end
end

File.open("input.txt", "r") do |input|
  File.open("output.txt", "w") do |output|
    
    cases = input.gets.strip
    phrase = "welcome to code jam"
    
    n_case = 1
    
    while line = input.gets
      d = []
      line.size.times{d << ([0] * phrase.size)}
      
      line = line.strip
      #if line[0].chr == "w"
        d[0][0] = 1
      #end

      for i in 1..(line.size )
        d[i][0] = 1
        #d[i][0] += 1 if phrase[0] == line[i]
        
        for j in 1..(phrase.size )
          d[i][j] = d[i - 1][j]
          if phrase[j - 1] == line[i - 1]
            d[i][j] += d[i - 1][j - 1]
          
            d[i][j] %= 10000
          end
        end
      end
      n = d[-1][-1]
      n = 0 if n.nil?
      
      n = n.to_s
      while n.size < 4
        n = "0" + n
      end
      
      puts "Case ##{n_case}: #{n}"
      n_case += 1
    end #end while
  end #end output
end #end input