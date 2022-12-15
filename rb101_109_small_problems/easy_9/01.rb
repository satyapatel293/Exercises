def greetings(name_array, work_hash)
  puts "Hello, #{name_array.join(' ')}! Nice to have a #{work_hash[:title]} #{work_hash[:occupation]} around."
end 

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })



#rubocop fix 

def greetings(name_array, work_hash)
  name = name_array.join(' ')
  title = work_hash[:title]
  occupation = work_hash[:occupation]
  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end 

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

