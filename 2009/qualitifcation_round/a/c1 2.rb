#!/usr/bin/env ruby

L = nil
D = nil
N = nil

words = []
patterns = []

count = 0

File.open("input.txt", "r") do |f|
	while l = f.gets
		if L.nil?
			L = l.split(" ")[0].to_i
			D = l.split(" ")[1].to_i
			N = l.split(" ")[2].to_i
		else
			if count < D
				words << l
				count += 1
			else
				aux = l.gsub("(", "[")
				aux = aux.gsub(")", "]")
				aux = "/^" + aux + "$/"
				patterns << eval(aux)
			end
		end
	end
end
#all data stored

matches = []
count = 0

#process data
patterns.each do |l|
	words.each do |w|
		if w =~ l
			matches[count] = 0 if matches[count].nil?
			matches[count] += 1
		end
	end
	count += 1
end

count = 1
matches.each do |m|
	m = 0 if m.nil? or m == ""
	puts "Case ##{count}: #{m}"
	count += 1
end
