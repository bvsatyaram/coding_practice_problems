require_relative "linked_list"

class Queee < LinkedList
  def push(val)
    append(val)
  end

  def pop
    if empty?
      puts "Queue Underflow"
    else
      delete(1)
    end
  end
end