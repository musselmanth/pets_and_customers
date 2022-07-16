require './lib/customer'
require './lib/pet'

RSpec.describe Customer do
  before(:each) do
    @joel = Customer.new("Joel", 2)
  end
  it 'exists' do
    expect(@joel).to be_an(Customer)
  end
  it 'has attributes' do
    expect(@joel.name).to eq("Joel")
    expect(@joel.id).to eq(2)
    expect(@joel.pets).to eq([])
  end
  it 'can adopt a pet' do
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})  
    @joel.adopt(samson)
    @joel.adopt(lucy)
    expect(@joel.pets).to eq([samson, lucy])
  end
  it 'has a default outstanding balance of 0' do
    expect(@joel.outstanding_balance).to be(0)
  end
  it 'can be charged and have a new outstanding balance' do
    @joel.charge(15)
    @joel.charge(7)
    expect(@joel.outstanding_balance).to eq(22)
  end
end