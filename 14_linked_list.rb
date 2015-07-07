class LinkedListNode
  attr_accessor :next

  def initialize(val)
    @value = val
  end

  def value
    @value
  end
end


class LinkedList
  def initialize
    @sentinel = LinkedListNode.new(nil)
    @tail = @sentinel
  end

  def head
    @sentinel.next
  end

  def tail
    @tail
  end

  def empty?
    head.nil?
  end

  def append(val)
    node = LinkedListNode.new(val)
    @tail.next = node
    @tail = node
  end

  def prepend(val)
    node = LinkedListNode.new(val)
    node.next = head
    @sentinel.next = node
  end

  def length
    counter = 0
    node = @sentinel.next
    while !node.nil?
      counter += 1
      node = node.next
    end

    return counter
  end

  def nth_element(n)
    element = @sentinel
    counter = 0
    while counter < n
      element = element.next
      counter += 1
    end

    return element
  end

  # +val+ is the value of the node to be inserted
  # +ind+ is the index at which the node should be inserted
  # Sentinel has index 0 and head has index 1.
  def insert(val, index)
    node = LinkedListNode.new(val)
    prev_ele = self.nth_element(index - 1)
    next_ele = prev_ele.next
    node.next = next_ele
    prev_ele.next = node
  end

  def delete(index)
    prev_element = self.nth_element(index - 1)
    element_to_delete = prev_element.next
    prev_element.next = element_to_delete.next
    # Release the deleted node, so that GC can collect it soon
    element_to_delete.next = nil
  end

  def print
    element = head
    str = ""
    while !element.nil?
      str += element.value.to_s
      str += " -> "
      element = element.next
    end

    puts str
  end
end

ll = LinkedList.new
ll.head # nil
ll.append(1)
ll.append(2)
ll.append(3)
ll.head # Node<1>
ll.head.value # 1
ll.prepend(4)
ll.head.value # 4
ll.tail.value # 3
ll.length # 4
ll.print
ll.insert(7, 3)
ll.print
ll.delete(2)
ll.print
