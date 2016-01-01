# Enter your object-oriented solution here!

class Multiples
  def initialize(limit)
    unless limit.is_a?(Fixnum)
      raise ArgumentError.new("Only numbers are allowed")
    end
    
    @limit = limit
  end
  
  def collect_multiples
    numbers = (3...@limit).to_a
    numbers.find_all { |n| n % 3 == 0 || n % 5 == 0 }
  end

  def sum_multiples
    collect_multiples.inject { |sum, n| sum + n }
  end
  
end




