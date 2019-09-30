require 'rails_helper'

RSpec.describe Customer, type: :model do

# fixtures :all

#   it 'Full name' do
#     customer = customers(:jackson)
#     expect(customer.full_name).to eq("Sr. Jackson Pires")
#   end

# FactoryBot
  it 'Full name' do
    customer = create(:customer)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it 'Full name - Sobrescrevendo Atributo' do
    customer = create(:customer, name: "Jackson Pires")
    puts customer.email
    expect(customer.full_name).to eq("Sr. Jackson Pires")
  end

  #aliases
  it 'Full name aliases' do
    customer = create(:user) # ou create(:customer)
    expect(customer.full_name).to start_with("Sr. ")
  end

  # Herança
  it '#Herança' do
    customer = create(:customer_vip)
    expect(customer.vip).to eq(true)
  end

  #attributes_for
  it 'Usando attributes_for' do
    attrs = attributes_for(:customer)
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with("Sr. ")
    # attrs2 = attributes_for(:customer_vip)
    # attrs3 = attributes_for(:customer_default)
    puts attrs
    # puts attrs2
    # puts attrs3
  end

  it 'Attibute transient' do
    customer = create(:customer_default, upcased: true)
    # puts attibutes_fo(:customer_default)
    expect(customer.name.upcase).to eq(customer.name)
  end

  # traits

  it 'Customer masculino vip' do
    customer = create(:customer_male)
    expect(customer.gender).to eq('M')
  end


  it 'Customer masculino vip' do
    customer = create(:customer_male_vip)
    expect(customer.gender).to eq('M')
    expect(customer.vip).to eq(true)
  end

  it 'Customer feminino default' do
    customer = create(:customer_female_default)
    expect(customer.gender).to eq('F')
  end

  it 'travel_to' do
    travel_to Time.zone.local(2004, 11, 24, 01, 04, 44) do
      @customer = create(:customer_vip)
    end

    puts @customer.created_at
    puts Time.now
    # expect(@customer.created_at).to eq(Time.new(2004, 11, 24, 01, 04, 44))
    expect(@customer.created_at).to be < Time.now
  end

  it { expect{ create(:customer) }.to change { Customer.all.size }.by(1) }
end