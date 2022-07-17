class Daycare
  attr_reader :name,
              :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def add_customer(customer)
    @customers << customer
  end

  def find_customer_by_id(searched_id)
    @customers.find{ |customer| customer.id == searched_id }
  end

  def unfed_pets
    # @customers.each do |customer|
    #   array = customer.pets.select do |pet|
    #     !pet.fed? 
    #   end
    #   require 'pry'; binding.pry
    # end
    pets = []
    @customers.each do |customer|
      customer.pets.each do |pet|
        pets << pet
      end
    end
    pets.select{ |pet| !pet.fed? }
  end

end