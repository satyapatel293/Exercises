class CircularQueue
  def initialize(size)
    @stack = Array.new(size)
    @write_idx = 0
    @read_idx = 0 
  end

  def enqueue(value)
    if @stack[@write_idx] != nil
      @read_idx = increment(@write_idx)
    end 

    @stack[@write_idx] = value
    @write_idx = increment(@write_idx)
  end 

  def dequeue
    removed = @stack[@read_idx]
    @stack[@read_idx] = nil
    @read_idx = increment(@read_idx) unless removed.nil?
    removed
  end 

  private 

  def increment(idx)
    (idx + 1) % @stack.size
  end 
end



queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil



#thier solution is similar I made edits to mine to match thiers 
#Furth exploration was very good the problem is actually easier than it looks
# if you think about the data structure differnetly 


class CircularQueue
  def initialize(size)
    @stack = []
    @size = size
  end

  def enqueue(object)
    dequeue if @stack.size == @size 
    @stack.push(object)
  end 

  def dequeue
    @stack.shift
  end 
end
