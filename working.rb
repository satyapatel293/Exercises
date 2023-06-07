require 'pry'

def return_block
  yield
  binding.pry
  return "returned from method"
end

puts return_block {  "returned from block!" }