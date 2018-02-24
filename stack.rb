class Stack
  attr_reader :values

  def initialize
    @values = Array.new
    #this is an extra space for holding the max_values but it's the most faster one.
    #because the complexity of getting the max  will be O(1) when acces the last max in the arry
    @max_stack = Array.new 
    @top = -1 # we need to keep track the last element pushed to the stack
  end
  
  def pop
    if @values.empty?
      return nil
    else 
      element =  @values.delete_at(@top)
      @top -= 1
      if element == max
        @max_stack.pop
      end 
      element
    end
  end
  
  def push(element)
    if element.nil?
      return nil
    else
      @top +=1
      @values[@top] = element
      if element > max
        @max_stack.push(element)
      end
      element
    end
  end
    
  def max 
    if @max_stack.empty?
     return -1 
    else
      @max_stack.last
    end
  end
  
  def size
    (@top + 1)
  end

end