require_relative "double_linked_list_node"
require_relative "linked_list"

class DoubleLinkedList < LinkedList
  def initialize
    @sentinel = DoubleLinkedListNode.new
    @tail = @sentinel
  end

  def append(val)
    node = DoubleLinkedListNode.new(val)
    @tail.next = node
    node.previous = @tail
    @tail = node
  end
end