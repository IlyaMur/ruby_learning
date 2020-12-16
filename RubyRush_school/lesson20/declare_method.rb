$a = 1
b = 1

def method
  c = 1
  p defined?($a)
  p defined?(b)
  p defined?(c)
end

method

p defined?($a)
p defined?(b)
p defined?(c)
