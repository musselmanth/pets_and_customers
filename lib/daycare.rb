class Daycare
  attr_reader :name,
              :customers,
              :feed_prices

  def initialize(name, feed_prices)
    @name = name
    @customers = []
    @feed_prices = feed_prices #hash
  end

  def add_customer(customer)
    @customers << customer
  end

  def find_customer_by_id(searched_id)
    @customers.find{ |customer| customer.id == searched_id }
  end

  def unfed_pets
    pets = []
    @customers.each do |customer|
      customer.pets.each do |pet|
        pets << pet
      end
    end
    pets.select{ |pet| !pet.fed? }
  end

  def feed_pets
    unfed_pets.each do |pet|
      pet.feed
      pet.owner.charge(@feed_prices[pet.type])
    end
  end

end