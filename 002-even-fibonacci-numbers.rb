def fibonacci(max)
  fib_seq = [1, 2];
  while (fib_seq[-1] < max)
    fib_seq.push(fib_seq[-1] + fib_seq[-2])
  end
  fib_seq[0...-1]
end

def run(max)
  fib_seq = fibonacci(max)
  res = fib_seq.select { |el| el % 2 == 0 }.reduce(0) { |mem, el| mem + el }
  res
end

p run(4000000)
