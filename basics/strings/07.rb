greeting = 'Hello!'

greeting.replace("Goodbye!")
puts greeting


# What they were looking for in this example was below
greeting = "Hello!"

greeting.gsub!("Hello!", "Goodbye!")
puts greeting