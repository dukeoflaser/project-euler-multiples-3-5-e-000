# Enter your procedural solution here!

def collect_multiples(limit)
  numbers = (3...limit).to_a
  numbers.find_all { |n| n % 3 == 0 || n % 5 == 0 }
end


def sum_multiples(limit)
  multiples = collect_multiples(limit)
  multiples.inject { |sum, n| sum + n }
end
