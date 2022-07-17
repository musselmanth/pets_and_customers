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

end