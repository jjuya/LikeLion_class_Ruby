# Part 1

# arr에 있는 모든 요소를 더한 값을 return하세요.
def sum arr
  # YOUR CODE HERE
  # arr.inject(0)
  arr.sum
end

# arr에 있는 가장 큰 두 수를 더해서 return하세요.
# 가장 큰 수가 동일한 경우 두 가지를 더하세요.
def max_2_sum arr
  # YOUR CODE HERE

  # 정렬 후 큰 두 원소를 더한다.
  # reduce(:+) array의 원소를 더하면서 압축
  # https://ruby-doc.org/core-2.1.0/Enumerable.html
  arr.empty? ? 0 : arr.max(2).reduce(:+)
end

# arr안에 있는 두 수를 더하여, n이 될 수 있는지의 여부를 return하세요.
def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? {|a, b| a + b == n}
end

# Part 2

# "Hello 이름"(H 대문자 주의)을 return하세요.
def hello(name)
    # YOUR CODE HERE
    "Hello, #{name}"
  
end

# 임의의 문자열 s가 자음으로 시작하는지의 여부를 return 하세요.
def starts_with_consonant? s
    # YOUR CODE HERE
    
    # "aeiou".split("")
    
    # %w, %q : https://simpleror.wordpress.com/2009/03/15/q-q-w-w-x-r-s/
    # %w("aeiou")
    # .include? : https://apidock.com/ruby/String/include%3F
    # 정규 표현식 : http://www.tutorialspoint.com/ruby/ruby_regular_expressions.html
    
    !%w(a e i o u).include? s.downcase[0] unless s.empty? or /^\W/.match(s)
end