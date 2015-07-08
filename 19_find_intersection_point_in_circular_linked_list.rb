# Given a circular linked list, find the origin of circular part
# Assume that the linked list has a loop

require_relative "lib/linked_list"

def find_intersection(ll)
  ele1 = ll.head
  ele2 = ll.head

  while true
    ele1 = ele1.next
    ele2 = ele2.next.next

    break if ele1 == ele2
  end

  ele1 = ll.head

  while ele1 != ele2
    ele1 = ele1.next
    ele2 = ele2.next
  end

  return ele1
end

ll = LinkedList.new
(1..9).each do |i|
  ll.append(i)
end
ll.append(ll.nth_element(4))

puts find_intersection(ll).value