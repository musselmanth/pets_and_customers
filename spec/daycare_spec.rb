require './lib/customer'
require './lib/pet'
require './lib/daycare'

RSpec.describe Daycare do
  before(:each) do
    @daycare = Daycare.new("Daddy Daycare")
  end

  it 'exists' do
    expect(@daycare).to be_instance_of(Daycare)
  end

  it 'has a name' do
    expect(@daycare.name).to eq("Daddy Daycare")
  end

  it 'has no customers by default' do
    expect(@daycare.customers).to eq([])
  end

  it 'can obtain customers' do
    joel = Customer.new("Joel", 2)
    robin = Customer.new("Robin", 3)
    @daycare.add_customer(joel)
    @daycare.add_customer(robin)

    expect(@daycare.customers).to eq([joel, robin])
  end

  it 'can obtain customers' do
    joel = Customer.new("Joel", 2)
    robin = Customer.new("Robin", 3)
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})  
    spot = Pet.new({name: "Spot", type: :parrot, age: 32})
    joel.adopt(samson)
    joel.adopt(lucy)
    robin.adopt(spot)
    @daycare.add_customer(joel)
    @daycare.add_customer(robin)

    expect(@daycare.customers[0].pets).to eq([samson, lucy])
    expect(@daycare.customers[1].pets).to eq([spot])
  end





end
