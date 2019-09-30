FactoryBot.define do
  factory :order do
    sequence(:description) { |n|  "Pedido número - #{n}" }
    # customer
    association :customer, factory: :customer # sobrescrevendo a factory
  end
end
