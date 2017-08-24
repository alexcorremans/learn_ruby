def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum array
  i = 0
  sum = 0
  while i < array.length
    sum = sum + array[i]
    i = i + 1
  end
  return sum
end

def multiply(a,b,*others)
  i = 0
  multiple = 1
  while i < others.length
    multiple = multiple * others[i]
    i = i + 1
  end
  return a*b*multiple
end

def power(a,b)
  return a**b
end

def factorial a
  if a == 0
    return 1
  else
    factorial = a
    while a > 1
      factorial = factorial * (a-1)
      a -= 1
    end
    return factorial
  end

end
