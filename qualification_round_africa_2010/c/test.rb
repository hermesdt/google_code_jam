require 'rubygems'
require 'ruby-debug'

module Enumerable
  def last
    self.to_a[-1]
  end
end

File.open("input.txt", "r") do |input|
  input.gets

  File.open("output.txt", "w") do |output|

      key = {
        ' ' => '0',
        'a' => "2",
        'b' => '22',
        'c' => '222',
        'd' => '3',
        'e' => '33',
        'f' => '333',
        'g' => '4',
        'h' => '44',
        'i' => '444',
        'j' => '5',
        'k' => '55',
        'l' => '555',
        'm' => '6',
        'n' => '66',
        'o' => '666',
        'p' => '7',
        'q' => '77',
        'r' => '777',
        's' => '7777',
        't' => '8',
        'u' => '88',
        'v' => '888',
        'w' => '9',
        'x' => '99',
        'y' => '999',
        'z' => '9999'
      }
    
    test = 1

    while l = input.gets
      l.chomp!
      text = l.chars.inject("") do |acum, char|
        k = key[char]
        acum << " " if acum[-1] == k[0]
        acum << k
        acum
      end

      output.puts "Case ##{test}: #{text}"
      test += 1
    end

  end
end
