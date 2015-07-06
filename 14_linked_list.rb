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
  def head
    @head
  end

  def tail
    @tail
  end

  def empty?
    @head.nil?
  end

  def append(val)
    node = LinkedListNode.new(val)
    if self.empty?
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
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

# ll.insert(4, 3)
# ll.delete(2)