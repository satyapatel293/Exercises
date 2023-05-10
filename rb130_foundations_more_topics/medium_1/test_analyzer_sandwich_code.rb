class TextAnalyzer
  def process
   File.open('./sample_text.txt', 'r') {|f| yield f}
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |f| puts "#{f.readlines('').size} paragraphs"}
analyzer.process { |f| puts "#{f.readlines.size} lines"}
analyzer.process { |f| puts "#{f.read.split(' ').size} words"}
analyzer.process { |f| puts "#{f.readlines.flat_map(&:split).count} words" }



# Their soultion 
# Follows the prompt better, I want the proccess method to read the data 
# then I want to sandwich the proceducre between a opening and closing 
# of the file 

class TextAnalyzer
  def process
    file = File.open('sample_text.txt', 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} lines" }
analyzer.process { |text| puts "#{text.split(' ').count} words" }


