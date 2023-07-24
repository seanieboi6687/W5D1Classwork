class MaxIntSet
  attr_reader :max
  attr_accessor :store
  def initialize(max)
    @store = Array.new(max)
    @max = max
  end

  def insert(num)
    @store[num] = true if self.is_valid?(num)
    raise "Out of bounds" if !self.is_valid?(num)
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store.each do |ele|
      if ele == true
        return true
      end
    end
    return false
  end

  private

  def is_valid?(num)
    if num >= 0 && num < @max
      return true
    else
      return false
    end
  end

  def validate!(num)
  end
end

class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def num_buckets
    @store.length
  end

  def resize!
  end

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end
end