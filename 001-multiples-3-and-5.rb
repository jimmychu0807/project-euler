def calc(n)
  selected = (1...n).select { |el| el % 3 == 0 || el % 5 == 0 }
  selected.reduce(0) { |mem, el| mem + el }
end

puts calc(10);
puts calc(1000);
