require_relative "linked_list"

class Stack < LinkedList
  def push(val)
    append(val)
  end

  def pop
    if empty?
      puts "Stack Underflow"
    else
      delete(self.length)
    end
  end
end