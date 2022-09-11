class Owner

  attr_reader :name, :species

  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(cat_name)
    cat = Cat.all.detect {|cat| cat.name == cat_name}
    cat.owner = self
  end

  def buy_dog(dog_name)
    dog = Dog.all.detect {|dog| dog.name == dog_name}
    dog.owner = self
  end

end