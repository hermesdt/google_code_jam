# de kr kd eoya kw ej tysr re ujdr lkc jv
# so it is okay if ou want to just gie up
replacements = {
'a' => 'y',
'b' => 'h',
'c' => 'e',
'd' => 's',
'e' => 'o',
'f' => 'c',
'g' => 'v',
'h' => 'x',
'i' => 'd',
'j' => 'u',
'k' => 'i',
'l' => 'g',
'm' => 'l',
'n' => 'b',
'o' => 'k',
'p' => 'r',
'q' => 'z',
'r' => 't',
's' => 'n',
't' => 'w',
'u' => 'j',
'v' => 'p',
'w' => 'f',
'x' => 'm',
'y' => 'a',
'z' => 'q',
' ' => ' '
}

File.open("input.txt", "r") do |input|
  cases = input.gets.chomp.to_i
  n = 1
  while line = input.gets
    line.chomp!
    puts "Case ##{n}: #{line.chars.map{|c| replacements[c]}.join}"
    n += 1
  end
end