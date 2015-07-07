require_relative "lib/double_linked_list"

dll = DoubleLinkedList.new
dll.head # nil
dll.tail # nil
dll.append(1)
dll.append(2)
dll.head.value # 1
dll.tail.value # 2
dll.head.next.value # 2
dll.tail.previous.value # 1