class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end

class LinkedList

  def initialize(value = nil)
    @head = Node.new(value)
    @tail = @head
  end

  #append adds a new node to the end of the list
  def append(node)
    if @head.value.nil?
      @head.value = node
      return self.to_s
    end
    new_node = Node.new(node)
    @tail.next_node = new_node
    @tail = new_node
    return self.to_s
  end

  def prepend(node)
    if @head.value.nil?
      @head.value = node
      return self.to_s
    end
    new_node = Node.new(node)
    new_node.next_node = @head
    @head = new_node
    return self.to_s
  end

  #size returns the total number of nodes in the list
  def size
    i = @head
    count = 0
    until i == nil do
      i = i.next_node
      count += 1
    end
    return count
  end

  #head returns the first node in the list
  def head
    @head.value
  end

  #tail returns the last node in the list
  def tail
    @tail.value
  end

  #at(index) returns the node at the given index
  def at(index)
    return "Error, index not in LinkedList." if index > self.size-1 || index < 0
    i = 0
    current = @head
    return @head.value if @head.next_node.nil?
    while true
      return current.value if index == i
      current = current.next_node
      i += 1
    end
  end

  #pop removes the last element from the list
  def pop
    if self.size == 1
      temp = @head.value
      @head.value = nil
      return temp
    end
    current = @head
    while true
      temp = current
      current = current.next_node
      break if current == @tail
    end
    temp.next_node = nil
    @tail = temp
    return current.value
  end

  #contains? returns true if the passed in value is in the list and otherwise returns false.
  def contains?(val)
    current = @head
    while true
      return true if current.value == val
      break if current.next_node.nil?
      current = current.next_node
    end
    return false
  end

  #find(data) returns the index of the node containing data, or nil if not found.
  def find(val)
    current = @head
    i = 0
    while true
      return i if current.value == val
      break if current.next_node.nil?
      current = current.next_node
      i += 1
    end
    nil
  end

  #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
  def to_s
    current = @head
    str = ""
    i = 0
    while true
      str += "#{current.value ? current.value : "nil"}: #{i}"
      current = current.next_node
      (str += " -> nil"; break) if current.nil?
      str += " -> "
      i += 1
    end
    return "#{str}"
  end
end

#tests
test = LinkedList.new()
p test.append('b')
p test.prepend('a')
p test.append('c')
p test.size
p test.head
p test.tail
p test.at(1)
p test.pop
p test.contains?('b')
p test.find('a')
