def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep


=begin
0
1
2
nil  ====> the last retrun didn't provide a value so it's nil

=end 
