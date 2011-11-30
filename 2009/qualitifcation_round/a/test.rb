File.open("input.txt", "r") do |input|
  output = STDOUT

  word_size, words_number, patterns_number = input.gets.chomp.split(" ").map{|w| w.to_i}
  words, patterns = [], []

  words_number.times do 
    words << input.gets
  end

  patterns_number.times do
    pattern = input.gets
    patterns << eval("/" + pattern.gsub("(", "[").gsub(")", "]") + "/")
  end

  case_number = 1

  for pattern in patterns
    acum = 0
    for word in words
      if word =~ pattern
        acum += 1
      end
    end

    output.puts "Case ##{case_number}: #{acum}"
    case_number += 1
  end

end
