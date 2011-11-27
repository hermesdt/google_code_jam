File.open("input.txt", "r") do |input|
  input.gets

  File.open("output.txt", "w") do |output|
    
    count = 1

    while l = input.gets
      l = l.split(" ").reverse.join(" ")
      output.puts "Case ##{count}: #{l}"
      count += 1
    end

  end
end
