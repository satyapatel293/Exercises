def compute 
  return yield if block_given?
  'Does not compute.'
end 

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'



# Their soultion 

def compute
  return 'Does not compute.' unless block_given?
  yield
end 

#further exploration 

def compute(value)
  return 'Does not compute.' unless block_given?
  yield(value)
end 

p compute(5) { |value| value + 3 } == 8
p compute('a') { |value| value + 'b' } == 'ab'
p compute('nope') == 'Does not compute.'

#other option 

def compute(value = 'default', &block)
  block_given? ? block.call(value) : 'Does not compute.' 
end 

p compute(5) { |value| value + 3 } == 8
p compute('a') { |value| value + 'b' } == 'ab'
p compute == 'Does not compute.'
