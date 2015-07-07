require_relative "lib/linked_list"

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
ll.length # 4
ll.print
ll.insert(7, 3)
ll.print
ll.delete(2)
ll.print
