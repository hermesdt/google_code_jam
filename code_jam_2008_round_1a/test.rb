require 'rubygems'
require 'ruby-debug'

File.open("input.txt", "r") do |input|
  File.open("output.txt", "w") do |output|
    test_cases = input.gets.to_i

    test_case = 1

    while input.gets
      parse = lambda{|line| line.split(" ").map{|m| m.to_i} unless line.nil?}
      vector1 = parse.call(input.gets) 
      vector2 = parse.call(input.gets) 

      aux, solution = [], 0 
      vector1 = vector1.sort{|x, y| y <=> x}
      vector2 = vector2.sort{|x, y| y <=> x}
      #vector2.each{|elem| aux << [elem, "-"]}

      while vector2.size > 0
        v1 = vector1.delete_at 0
        if v1 < 0
          v2 = vector2.delete_at 0
        else
          v2 = vector2.pop
        end

        solution += v1 * v2
      end

      output.puts "Case ##{test_case}: #{solution}"
      test_case += 1
    end

  end
end
