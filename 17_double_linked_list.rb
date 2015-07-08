require_relative "lib/double_linked_list"

dll = DoubleLinkedList.new
dll.head # nil
dll.tail # nil
dll.append(1)
dll.append(2)
puts dll.head.value # 1
puts dll.tail.value # 2
puts dll.head.next.value # 2
puts dll.tail.previous.value # 1