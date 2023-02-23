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
  match = false
  sumValue = 0
  i = 0
  j = 0
  while i < arr.length
    # Sums each value behind index i with index i and checks if it equals n
    while j < i
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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
