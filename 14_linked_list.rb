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

ll.insert(4, 3)
# ll.delete(2)