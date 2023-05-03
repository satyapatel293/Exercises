def count(*values)
  values.inject(0) do |result, value|
    result += 1 if yield(value)
    result
    #yield(value) ? result += 1 : result
  end 
end 


p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3


# thier soultion easier to understand

def count(*arguments)
  total = 0
  arguments.each { |item| total += 1 if yield(item) }
  total
end