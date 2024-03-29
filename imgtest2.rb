class Node
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


def reverse_list(list, previous=nil)
    while list 
        temp_node = list.next_node 

        list.next_node = previous

        previous = list #this reference current node im on

        list = temp_node 
    end
    return previous
end

  
node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)

print_values(node3)
new_list = reverse_list(node3)
print_values(new_list)


