require_relative "lib/queue"

queue = Queee.new
queue.push(1)
queue.push(2)
queue.push(3)
puts queue.pop
puts queue.pop
puts queue.pop
puts queue.pop
