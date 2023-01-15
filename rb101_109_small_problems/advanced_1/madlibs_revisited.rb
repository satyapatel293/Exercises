replacements = {
  adjective: %w(quick lazy sleepy ugly),
  noun: %w(fox dog head leg),
  verb: %w(jumps lifts bites licks),
  adverb: %w(easily lazily noisily excitedly)
}


text = IO.read('textdata.txt')



text.gsub!('%{adjective}') {|match| replacements[:adjective].sample}
text.gsub!('%{noun}') {|match| replacements[:noun].sample}
text.gsub!('%{adverb}') {|match| replacements[:adverb].sample}
text.gsub!('%{verb}') {|match| replacements[:verb].sample} 


# puts text

#their soultion might be easier using the format method because the strings already include %{name} inside them making 
# them easy to fomrat 

# I DONT UNDERSTAND LINE 27!! how are we calling each on this object?
File.open('textdata.txt') do |file|
  file.each do |line|
    puts format(line, noun:      replacements[:noun].sample,
                      verb:      replacements[:verb].sample,
                      adjective: replacements[:adjective].sample,
                      adverb:    replacements[:adverb].sample)
  end
end