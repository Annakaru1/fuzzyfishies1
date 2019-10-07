class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
  else
      print "nil\n"
    return
  end
end
#-----------------------------------
# Turtle and Bunny
# 
# turtle == firstNode
# bunny == firstNode
# if bunny == end
# return 'False, No loop found'

# bunny = bunny.next
# turtle = turtle.next
# if bunny == turtle
# return 'True, Loop found'

# need to show bunny is going faster than the turtle 
# to prove there is a loop
#-----------------------------------
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

node1.next_node = node3

print_values(node3)