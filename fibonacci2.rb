def fibo(numbers)

  a = 0
  b = 1

  while b < numbers do
    puts b

    a,b = b, a + b
  end
end

#print fibo(35)
print fibo(9227465)

require 'benchmark'
number = 35
Benchmark.bm do |x|
  x.report("fibo")  { (number)  }
end
