File.open("input.txt", "r") do |input|
  cases = input.gets.chomp.to_i

  cases.times do |n|
    intersections = 0
    rows = input.gets.chomp.to_i
    wires = rows.times.to_a.map{|r| input.gets.chomp.split(" ").map(&:to_i)}

    used_wires = []
    wires.each do |wire|
      intersections += used_wires.count{|w| wire[0] < w[0] && wire[1] > w[1] || wire[0] > w[0] && wire[1] < w[1]}
      used_wires << wire
    end

    puts "Case ##{n+1}: #{intersections}"
  end

end
