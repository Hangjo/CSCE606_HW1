# When done, submit this entire file to the autograder.

# Part 1

# Returns sum of array
def sum arr
  # YOUR CODE HERE
  total = arr.sum
  
  return total
end

# Returns sum of two largest elements in array
def max_2_sum arr
  # YOUR CODE HERE
  sortedarr = arr.sort.reverse
  total = sortedarr.take(2).sum
  
  return total
end

# Returns true if two elements in array sum to n
def sum_to_n? arr, n
  # YOUR CODE HERE
  pairs = arr.combination(2).to_a
  
  for p in pairs
    if p.sum == n 
      return true
    end
  end
      
  return false
end

# Part 2

# Returns "Hello, 'name'"
def hello(name)
  # YOUR CODE HERE
  response = "Hello, ".concat(name)
  
  return response
end

# Returns true if string starts with consonant
def starts_with_consonant? s
  # YOUR CODE HERE
  if s.start_with?(/[b-df-hj-np-tv-z]/i) 
    return true
  end
    
  return false
end

# Returns true if the string represents a binary number that is a multiple of 4
def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s !~ /[^01]/ and s != ""
    num = s.to_i(2)
    if num % 4 == 0
      return true
    else
      return false
    end
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn == ""
      raise(ArgumentError)
    else
      @isbn = isbn
    end
    
    if price <= 0
      raise(ArgumentError)
    else
      @price = price
    end
  end
  
  def price_as_string
    return "$%.2f" % [@price]
  end
end
