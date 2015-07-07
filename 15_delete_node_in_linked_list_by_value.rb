require_relative "lib/linked_list"

class LinkedList
  def delete_by_value(val)
    prev_element = @sentinel
    element = head
    while !element.nil? && element.value != val
      prev_element = element
      element = element.next
    end

    if element.nil?
      puts "No match found"
    else
      prev_element.next = element.next
      element.next = nil
    end
  end

  def delete_all_by_value(val)
    prev_element = @sentinel
    element = head
    while !element.nil?
      if element.value == val
        prev_element.next = element.next
        element.next = nil
        element = prev_element.next
      else
        prev_element = element
        element = element.next
      end
    end
  end
end

ll = LinkedList.new
ll.append("A")
ll.append("B")
ll.append("C")
ll.append("C")
ll.append("D")
ll.append("C")
ll.append("E")
ll.print
ll.delete_all_by_value("C")
ll.print
