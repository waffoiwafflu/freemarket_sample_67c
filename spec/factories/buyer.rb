# require 'payjp'

# token = Payjp::Token.create({
#   :card => {
#     :number => '4242424242424242',
#     :cvc => '123',
#     :exp_month => '2',
#     :exp_year => '2020'
#   }},
#   {
#     'X-Payjp-Direct-Token-Generate': 'true'
#   } 
# )
# customer = Payjp::Customer.create()
# customer.cards.create(card:token.id)
# charge = Payjp::Charge.create(
#   amount: 1000,
#   customer: customer.id,
#   currency: 'jpy',
# )
# buyer_id = charge.id
# FactoryBot.define do
#   factory :buyers do
#     buyer_id           {buyer_id}
#     evaluation            {1}
#     association           :item
#     association           :user
#     created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
#     updated_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
#   end
# end