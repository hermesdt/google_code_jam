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

      solution = 0 
      vector1 = vector1.sort{|x, y| x <=> y}
      vector2 = vector2.sort{|x, y| y <=> x}

      while vector1.size > 0
        solution += vector1.pop * vector2.pop
      end

      output.puts "Case ##{test_case}: #{solution}"
      test_case += 1
    end

  end
end
