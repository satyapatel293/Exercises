birds = %w(raven finch hawk eagle)

def set_raptors(array)
  yield(array) 
end 

set_raptors(birds) {|_,_,*raptors| p raptors}

# This problem took me way to long to understand what they 
# were asking for, I misunderstood it as having the #set_raptors
# method do the block paramter assigment but only the block can 
#   determine it's parameters, so I needed to invoke it with 
# the block needed to have it make sense 