  def sequence(num)
    sequence_chain = [num]
    until num == 1
      if num.even?
        num = num / 2
        sequence_chain.push(num)
      else
        num = (3 * num +1)
        sequence_chain.push(num)
      end
    end
    sequence_chain
  end


  def longest_sequence
    start = 1
    longest_chain = []
    until start == 10000000
      next_chain = sequence(start)
     
      if next_chain.length > longest_chain.length
        longest_chain = next_chain
      else
        start += 1
      end
    end
  end

sequence(1).display 
puts
sequence(2).display
puts
sequence(3).display
puts
puts
#-----------------------------
sequence(7).display
puts
a = sequence(7)
puts "Collatz sequence length : #{a.count}\n\n"
puts

sequence(1000).display
puts
b = sequence(1000)
puts "Collatz sequence length : #{b.count}\n\n"
puts

sequence(7000).display
c = sequence(7000)
puts "Collatz sequence length : #{c.count}\n\n"
puts

sequence(10000000).display
d = sequence(10000000)
puts "Collatz sequence length : #{d.count}\n\n"
puts
#-----------------------------

sequence(longest_sequence.to_i).display
e = sequence(longest_sequence.to_i)
puts "Collatz sequence length : #{e.count}\n\n"

#This last part produces a "failed to allocate memory (NoMemoryError)" message




