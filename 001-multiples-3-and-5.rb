def calc(n)
  selected = (1...n).select { |el| el % 3 == 0 || el % 5 == 0 }
  selected.reduce(0) { |mem, el| mem + el }
end

p calc(1000);
