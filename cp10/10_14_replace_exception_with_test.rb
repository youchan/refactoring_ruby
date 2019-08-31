class ResourceStack
  def pop
    #raises EmptyStackError if the stack is empty
  end
end

class ResourcePool
  def initialize
    @available = ResourceStack.new
    @allocated = ResourceStack.new
  end

  def resource
    begin
      result = @available.pop
      @allocated.push(result)
      return result
    rescue EmptyStackError
      result = Resource.new
      @allocated.push(result)
      return result
    end
  end
end
