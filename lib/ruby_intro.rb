# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  i = 0
  calcSum = 0
  while i < arr.length
    calcSum = calcSum + arr[i]
    i = i + 1
  end
  return calcSum
end

def max_2_sum arr
  i = 2
  # Checks if arr is 0, 1, or higher
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    num1 = arr[0]
    num2 = arr[1]
  end
  # Finds highest values by default uses first and second values
  while i < arr.length
    if arr[i] > num1
      num2 = num1
      num1 = arr[i]
    elsif arr[i] > num2
      num2 = arr[i]
    end
    i = i + 1
  end
  return (num1 + num2)
end

def sum_to_n? arr, n
  match = false # starts by assuming there is no match
  sumValue = 0
  i = 0
  j = 0
  # iterates through arr
  while i < arr.length
    while j < i
      # Sums each value behind index i with index i and checks if it equals n
      if arr[i] + arr[j] == n
        match = true
      end
      j = j + 1
    end
    j = 0
    i = i + 1
  end
  return match
end

# Part 2

def hello(name)
  return 'Hello, '.concat(name)
end

def starts_with_consonant? s
  swc = false # Starts by assuming false
  # goes through all consonants both upper and lower
  for i in ["q", "w", "r", "t", "y", "p", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m",
     "Q", "W", "R", "T", "Y", "P", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M"]
    if s[0] == i # if anything matches the first letter of the string set to true
      swc = true
    end
  end
  return swc
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  # Creates local variable
  attr_accessor :isbn, :price
  # Constructor
  def initialize(isbn, price)
    if isbn == '' # Checks if it's empty
      raise ArgumentError
    else
      @isbn = isbn.to_s
    end
    if price <= 0 # Checks if it's above 0
      raise ArgumentError
    else
      @price = price
    end
  end
  # Create Local Method
  def price_as_string
    return "$%0.2f" % [price]
  end
end
