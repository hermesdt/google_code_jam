require 'rubygems'
require 'ruby-debug'

File.open("input.txt", "r") do |input|
  input.gets

  File.open("output.txt", "w") do |output|
    
    test = 1

    while l = input.gets
      max = l.to_i
      input.gets
      numbers = input.gets.split(" ").map{|i| i.to_i}

      values = []
  
      begin
        numbers.each_with_index do |num, idx1|
          diff = max - num

          numbers.each_with_index do |x, idx2|
            if x == diff and idx1 != idx2
              values << idx1 << idx2
              raise Exception
            end
          end

        end
      rescue Exception => e
      end

      positions = [values[0], values[1]].sort
      positions = positions.map{|n| n + 1}

      output.puts "Case ##{test}: #{positions.join(" ")}"
      test += 1
    end

  end
end
