# Given a linked list, check if there is a circular part
# in the linked list

require_relative "lib/linked_list"

def check_circular(ll)
  ele1 = ll.head
  ele2 = ll.head

  while !ele2.nil?
    ele1 = ele1.next
    ele2 = ele2.next
    ele2 = ele2.next unless ele2.nil?

    break if ele1 == ele2
  end

  return !ele2.nil?
end

ll1 = LinkedList.new
(1..9).each do |i|
  ll1.append(i)
end
ll1.append(ll1.nth_element(4))

ll2 = LinkedList.new
(11..20).each do |i|
  ll2.append(i)
end

puts check_circular(ll1) # true
puts check_circular(ll2) # false