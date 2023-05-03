# Write a minitest assertion that will fail if the value.odd? is not true.


assert_equal(true, value.odd?)
#this is testing more specifcally is value.odd? is true vs just truthy like the soultion below 
# this is actually a more realistic test


# They were looking for  

assert value.odd?, 'value is not odd'