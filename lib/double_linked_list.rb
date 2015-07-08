require_relative "double_linked_list_node"
require_relative "linked_list"

class DoubleLinkedList < LinkedList
  def initialize
    @sentinel = DoubleLinkedListNode.new
  end

  def append(val)
    node = DoubleLinkedListNode.new(val)
    node.previous = tail
    tail.next = node
  end
end