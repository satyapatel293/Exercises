RETRUN TO THIS PROBLEM 



# class Pet 
#   attr_reader :type, :name

#   @@all_pets = []
#   def initialize(type, name)
#     @type = type 
#     @name = name 
#   end 
# end 

# class Owner
#   attr_accessor :number_of_pets
#   attr_reader :name
#   def initialize(name)
#     @name = name
#     @number_of_pets = 0 
#   end 
# end 

# class Shelter
#   attr_accessor :adoption_list 

#   def initialize
#     @adoption_list = Hash.new
#   end 
  
#   def adopt(owner, pet)
#     owner.number_of_pets += 1
#     if self.adoption_list.key?(owner)
#       self.adoption_list[owner] << pet
#     else
#       self.adoption_list[owner] = [pet]
#     end
#   end 

#   def print_adoptions
#     self.adoption_list.each do |owner, pets|
#       puts "#{owner.name} has adopted the following pets:"
#       pets.each {|pet| puts "a #{pet.type} named #{pet.name}"}
#       puts
#     end 
#   end 
# end 



# further exploration
class Pet
  attr_reader :animal, :name 

  def initialize(animal, name)
    @animal = animal
    @name = name
  end

  def to_s
    "a #{animal} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def add_pet(pet)
    @pets << pet
  end

  def number_of_pets
    pets.size
  end

  def print_pets
    puts pets
  end
end

class Shelter
  attr_accessor :unadopted
  def initialize
    @owners = {}
    @unadopted = []
  end

  def adopt(owner, pet)
    owner.add_pet(pet)
    @owners[owner.name] ||= owner
    self.unadopted.delete(pet)
  end

  def add_pet(pet)
    @unadopted << pet 
  end 

  def print_adoptions    
    puts 'The Animal Shelter has the following unadopted pets:'
    puts unadopted
    @owners.each_pair do |name, owner|
      puts "#{name} has adopted the following pets:"
      owner.print_pets
      puts
    end
  end
end



shelter = Shelter.new

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
asta         = Pet.new('dog', 'Asta')
laddie      = Pet.new('dog', 'Laddie')
fluffy      = Pet.new('cat', 'Fluffy')
          

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."





####Thier soultion 


# class Pet
#   attr_reader :animal, :name

#   def initialize(animal, name)
#     @animal = animal
#     @name = name
#   end

#   def to_s
#     "a #{animal} named #{name}"
#   end
# end

# class Owner
#   attr_reader :name, :pets

#   def initialize(name)
#     @name = name
#     @pets = []
#   end

#   def add_pet(pet)
#     @pets << pet
#   end

#   def number_of_pets
#     pets.size
#   end

#   def print_pets
#     puts pets
#   end
# end

# class Shelter

#   def initialize
#     @owners = {}
#   end

#   def adopt(owner, pet)
#     owner.add_pet(pet)
#     @owners[owner.name] ||= owner
#   end

#   def print_adoptions
#     @owners.each_pair do |name, owner|
#       puts "#{name} has adopted the following pets:"
#       owner.print_pets
#       puts
#     end
#   end
# end