# FactoryBot.define do
#     factory :customer, aliases: [:user] do

#         transient do
#             upcased false
#         end

#         name Faker::Name.name 
#         email Faker::Internet.email
    
#         factory :customer_male do
#             gender 'M'
#         end

#         factory :customer_female do
#             gender 'F'
#         end

#         factory :customer_vip do
#             vip true
#             days_to_pay 30
#         end

#         factory :customer_default do
#             vip false
#             days_to_pay 15
#         end

#         after(:create) do |customer, evaluator|
#             customer.name.upcase! if evaluator.upcased
#         end
#     end
# end

FactoryBot.define do
    factory :customer, aliases: [:user] do

        transient do
            upcased false
            qtt_orders 3
        end

        name { Faker::Name.name } 
        # email { Faker::Internet.email }
        # email { name + "@email.com"}
        address { Faker::Address.street_address }

        sequence(:email, 35) { |n| "meu_email-#{n}@email.com" }
    
        trait :male do
            gender 'M'
        end

        trait :female do
            gender 'F'
        end

        trait :vip do
            vip true
            days_to_pay 30
        end

        trait :default do
            vip false
            days_to_pay 15
        end

        trait :with_orders do
            after(:create) do |customer, evaluator|
                create_list(:order, evaluator.qtt_orders, customer: customer)
            end
        end

        factory :customer_male, traits: [:male]
        factory :customer_female, traits: [:female]
        factory :customer_vip, traits: [:vip]
        factory :customer_default, traits: [:default]
        factory :customer_male_vip, traits: [:male, :vip]
        factory :customer_female_vip, traits: [:female, :vip]
        factory :customer_male_default, traits: [:male, :default]
        factory :customer_female_default, traits: [:female, :default]

        factory :customer_with_orders, traits: [:with_orders]

        after(:create) do |customer, evaluator|
            customer.name.upcase! if evaluator.upcased
        end
    end
end