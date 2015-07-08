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

  def prepend(val)
    node = DoubleLinkedListNode.new(val)
    node.next = head
    head.previous = node
    node.previous = @sentinel
    @sentinel.next = node
  end

  def insert(val, index)
    prev_ele = self.nth_element(index - 1)
    next_ele = prev_ele.next

    node = DoubleLinkedListNode.new(val)
    node.next = next_ele
    node.previous = prev_ele
    prev_ele.next = node
    next_ele.previous = node
  end

  def delete(index)
    prev_ele = self.nth_element(index - 1)
    element_to_delete = prev_ele.next
    next_ele = element_to_delete.next

    prev_ele.next = next_ele
    next_ele.previous = prev_ele
    element_to_delete.previous = nil
    element_to_delete.next = nil
  end
end