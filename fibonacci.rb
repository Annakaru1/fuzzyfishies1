def fibo(number)
  if (number <= 1) 
    number
  else
    fibo(number - 1) + fibo(number - 2)
  end
end

puts "enter number"
number = gets.chomp.to_i
puts number

print fibo(number)

require 'benchmark'
number = 35
Benchmark.bm do |x|
  x.report("fibo") {fibo(number) }
end
