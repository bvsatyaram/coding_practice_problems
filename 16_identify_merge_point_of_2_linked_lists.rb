# You are give 2 linked lists (not necessarily of the same length),
# that merge some where in between. Write a method that takes in
# 2 linked list and identifies the point of merge
# Assume none of the linked lists are circular

require_relative "lib/linked_list"

def find_merge(ll1, ll2)
  len1 = ll1.length
  len2 = ll2.length
  ele1 = ll1.head
  ele2 = ll2.head
  if len1 > len2
    (len1 - len2).times do
      ele1 = ele1.next
    end
  else
    (len2 - len1).times do
      ele2 = ele2.next
    end
  end

  while ele1 != ele2
    ele1 = ele1.next
    ele2 = ele2.next
  end

  if ele1.nil?
    puts "The lists don't merge"
  else
    puts ele1.value
  end
end

ll1 = LinkedList.new
ll1.append("A")
ll1.append("B")
ll1.append("C")
ll1.append("D")
ll1.append("E")

ll2 = LinkedList.new
ll2.append(1)
ll2.append(2)
ll2.append(ll1.nth_element(4))

find_merge(ll1, ll2)

