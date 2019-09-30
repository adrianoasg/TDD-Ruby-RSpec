require 'rails_helper'

RSpec.describe Order, type: :model do
  # it 'Tem 1 pedido' do
  #   order = create(:order)
  #   puts order.description
  #   puts order.customer
  #   puts order.customer.name
  #   expect(order.customer).to be_kind_of(Customer)
  # end

  # sobrescrevendo atributo
  # it 'Tem 1 pedido' do
  #   customer = create(:customer)
  #   order = create(:order, customer: customer)
  #   expect(order.customer).to be_kind_of(Customer)
  # end

  # sobrescrevendo a factory
  it 'belongs_to' do
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'Possui 3 pedidos - create_list' do
    orders = create_list(:order, 3, description: "Testeeeeeeee")
    # puts orders.inspect
    expect(orders.count).to eq(3)
  end

  # it 'has_many' do
  #   customer = create(:customer, :with_orders)
  #   # customer = create(:customer, :with_orders, qtt_orders: 5)
  #   # puts customer.inspect
  #   # puts customer.orders.inspect
  #   expect(customer.orders.count).to eq(5)
  # end

  # traits
  it 'has_many' do
    customer = create(:customer_with_orders)
    expect(customer.orders.count).to eq(3)
  end

end