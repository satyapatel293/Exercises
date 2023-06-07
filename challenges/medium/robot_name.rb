class Robot
  @@names_list = []

  def initialize
    @name = name
  end

  def name
    @name ? @name : self.class.set_name 
  end

  def reset
    @@names_list.delete(@name)
    @name = nil
  end

  def self.set_name
    new_name = ''
    loop do
      num = rand(100..999).to_s
      letters = ('AA'..'ZZ').to_a.sample
      new_name = letters + num
      break unless names.include?(new_name)
    end
    @@names_list << new_name
    @name = new_name
  end

  def self.names
    @@names_list
  end
end
