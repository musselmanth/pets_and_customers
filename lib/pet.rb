class Pet

  attr_reader :name,
              :type,
              :age
              
  attr_accessor :owner

  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @age = attributes[:age]
    @fed = false
    @owner = nil
  end

  def fed?
    @fed
  end

  def feed
    @fed = true
  end

end