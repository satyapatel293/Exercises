name = 'Bob'
save_name = name
name.upcase!
puts name, save_name


=begin
this will output
BOB
BOB 
this is because the variable name is changed destrucitvily so Bob is changed to BOB 
and save_name also points to the same place in memory so it is also pointing to BOB 


=end